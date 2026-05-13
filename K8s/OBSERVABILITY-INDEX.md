# Kubernetes Observability - Setup Index

## 📊 Quick Links

| Document | Purpose | Status |
|----------|---------|--------|
| [observability-setup.md](observability-setup.md) | High-level overview & deployment order | ✅ Complete |
| [microservices-metrics-guide.md](microservices-metrics-guide.md) | Code changes for each microservice | ✅ Complete |
| [prometheus-deployment.yaml](prometheus-deployment.yaml) | Prometheus StatefulSet, Service, Config | ✅ Ready |
| [grafana-deployment.yaml](grafana-deployment.yaml) | Grafana Deployment with Prometheus datasource | ✅ Ready |

---

## 🎯 Current Status

### Microservices with Metrics ✅
- **cart** - Node.js with `prom-client`
- **payment** - Python with `prometheus_client`

### Microservices Needing Metrics ❌
- **catalogue** - Node.js (needs prom-client)
- **user** - Node.js (needs prom-client)
- **shipping** - Java (needs Micrometer)
- **ratings** - (needs library TBD)
- **web** - (needs library TBD)

---

## 🚀 Deployment Steps

### Step 1: Deploy Prometheus
```bash
kubectl apply -f K8s/prometheus-deployment.yaml
kubectl get statefulsets -w prometheus
```

### Step 2: Deploy Grafana
```bash
kubectl apply -f K8s/grafana-deployment.yaml
kubectl get deployments -w grafana
```

### Step 3: Update Microservices
For each service, follow the guide in `microservices-metrics-guide.md`

Example (catalogue):
```bash
# 1. Add prom-client to package.json
# 2. Update server.js with metrics code (from guide)
# 3. Update K8s deployment YAML with Prometheus annotations
# 4. Redeploy service

kubectl apply -f catalogue-deployment.yaml
```

### Step 4: Verify Scraping
```bash
# Prometheus targets should be UP
kubectl port-forward svc/prometheus 9090:9090
# Visit http://localhost:9090/targets
```

### Step 5: Access Grafana
```bash
kubectl port-forward svc/grafana 3000:3000
# Visit http://localhost:3000
# Login: admin / admin123
```

---

## 📈 Architecture

```
┌─────────────────────────────────────────────────────────┐
│                 Kubernetes Cluster                      │
├─────────────────────────────────────────────────────────┤
│                                                          │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  │
│  │   cart       │  │  payment     │  │ catalogue    │  │
│  │  :8080/metrics  │  :5000/metrics  │  :8080/metrics  │
│  └──────────────┘  └──────────────┘  └──────────────┘  │
│         ▲                  ▲                  ▲          │
│         └──────────┬───────┴────────┬────────┘          │
│                    │                │                   │
│              ┌─────▼────────┐  ┌───▼─────────┐          │
│              │ Prometheus   │  │   Grafana   │          │
│              │  (9090)      │  │   (3000)    │          │
│              └──────────────┘  └─────────────┘          │
│                    │                     ▲              │
│                    └─────────────────────┘              │
│                     (datasource)                        │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

---

## 📊 Metrics Dashboard

Once deployed, Grafana will show:
- **Service Up Status** - Which services are running
- **Request Rate (5m)** - Throughput in requests/sec
- **Request Latency P95** - Response time at 95th percentile
- **Error Rate** - Failed requests percentage
- **Resource Usage** - CPU, Memory per service

---

## ⚠️ Important Notes

### Before Deploying
- Review resource requests/limits for your cluster
- Ensure persistent volume provisioning is available
- Check Prometheus scrape configuration for your services

### After Deploying
1. **Change Grafana password** immediately! (default: admin/admin123)
2. **Verify all targets are UP** in Prometheus
3. **Configure alerts** for critical metrics
4. **Set retention policies** based on disk space

### Production Recommendations
- Add authentication to Prometheus
- Use TLS for all connections
- Implement RBAC restrictions
- Consider Prometheus Operator for HA setup
- Use persistent volume backup strategy

---

## 🔧 Troubleshooting

### Prometheus targets are DOWN
```bash
# Check if services are running with correct ports
kubectl get pods -o wide
kubectl logs -f prometheus-0

# Verify /metrics endpoint is accessible
kubectl port-forward svc/cart 8080:8080
curl http://localhost:8080/metrics
```

### Grafana not showing data
```bash
# Check Prometheus datasource configuration
# Visit Grafana → Configuration → Data Sources → Prometheus
# Test datasource connection

# Verify Prometheus has scraped metrics
kubectl port-forward svc/prometheus 9090:9090
# Query: up{job="kubernetes-pods"}
```

### Storage issues
```bash
# Check PVC status
kubectl get pvc

# Expand PVC if needed
kubectl patch pvc prometheus-storage -p '{"spec":{"resources":{"requests":{"storage":"20Gi"}}}}'
```

---

## 📚 References

- [Prometheus Documentation](https://prometheus.io/docs/)
- [Grafana Documentation](https://grafana.com/docs/)
- [prom-client (Node.js)](https://github.com/siimon/prom-client)
- [prometheus_client (Python)](https://github.com/prometheus/client_python)
- [Micrometer (Java)](https://micrometer.io/)

---

## ✨ Summary

All YAML templates and code guides are ready. Choose one service and start:

1. Pick a microservice (recommend **catalogue** - it's Node.js)
2. Follow the code changes in `microservices-metrics-guide.md`
3. Add Prometheus annotations to its deployment
4. Redeploy and verify in Prometheus UI

**Once one service works, the pattern is the same for all others.**

Good luck! 🚀
