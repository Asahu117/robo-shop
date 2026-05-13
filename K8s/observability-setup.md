# Kubernetes Observability Setup - Prometheus + Grafana

## 📊 Current Metrics Endpoint Status

### ✅ ALREADY HAVE /metrics ENDPOINTS:
1. **cart** (Node.js) - `prom-client` library ✓
   - Endpoint: `GET /metrics`
   - Counter: custom metrics tracked

2. **payment** (Python) - `prometheus_client` library ✓
   - Endpoint: `GET /metrics`
   - Counters & Histograms tracked

### ❌ NEED /metrics ENDPOINTS:
1. **catalogue** (Node.js) - Needs `prom-client`
2. **user** (Node.js) - Needs `prom-client`
3. **shipping** (Java) - Needs Micrometer/Spring Boot Actuator
4. **ratings** - Needs metrics endpoint
5. **web** - Needs metrics endpoint

---

## 🔧 Required Changes

### Phase 1: Add Metrics to Services (Update Code)

#### Node.js Services (catalogue, user)
```javascript
// Add to package.json
"prom-client": "^15.0.0"

// Add to server.js
const promClient = require('prom-client');
const register = new promClient.Registry();

app.get('/metrics', (req, res) => {
    res.set('Content-Type', register.contentType);
    res.end(register.metrics());
});
```

#### Java Services (shipping)
```xml
<!-- Add to pom.xml -->
<dependency>
    <groupId>io.micrometer</groupId>
    <artifactId>micrometer-registry-prometheus</artifactId>
</dependency>

<!-- Endpoint: GET /actuator/prometheus -->
```

#### Python Services (ratings)
```python
from prometheus_client import Counter, Histogram, generate_latest

metrics_counter = Counter('requests_total', 'Total requests')
metrics_histogram = Histogram('request_duration_seconds', 'Request duration')

@app.route('/metrics', methods=['GET'])
def metrics():
    return generate_latest()
```

---

### Phase 2: Kubernetes Deployment (YAML Files)

#### 1. Prometheus StatefulSet
- File: `K8s/prometheus-deployment.yaml`
- Includes: Service, ConfigMap, StatefulSet
- Storage: PersistentVolume for metrics retention

#### 2. Grafana Deployment
- File: `K8s/grafana-deployment.yaml`
- Includes: Service, Deployment, ConfigMap (datasources)
- Port: 3000

#### 3. ServiceMonitor Resources
- Automatically discovers microservices with `/metrics`
- CRD: Prometheus Operator (optional)

#### 4. Service Annotations
- Each microservice Pod tagged with Prometheus scrape labels
- Prometheus auto-discovers via annotations

---

## 📈 Deployment Order

1. **Install Prometheus** (`K8s/prometheus-deployment.yaml`)
   - Storage: 10GB PV for metrics
   - Retention: 30 days
   - Scrape interval: 15s

2. **Install Grafana** (`K8s/grafana-deployment.yaml`)
   - Add Prometheus as datasource
   - Import pre-built dashboards
   - Admin credentials in Secret

3. **Update Microservices**
   - Add `/metrics` endpoints
   - Deploy with Prometheus annotations
   - Verify scraping in Prometheus UI

---

## ✔️ Verification Steps

1. **Prometheus UI**: `kubectl port-forward svc/prometheus 9090:9090`
   - Check Targets: All services should be UP
   - Query metrics: `up{job="kubernetes-pods"}`

2. **Grafana Dashboard**: `kubectl port-forward svc/grafana 3000:3000`
   - Login with admin/admin
   - View metrics from Prometheus datasource

3. **Check Service Metrics**:
   - `kubectl logs -f prometheus-0` → Check scrape logs
   - `curl http://localhost:9090/api/v1/targets` → API check

---

## 📂 Files to Create

```
K8s/
├── prometheus-deployment.yaml          # StatefulSet + Service + ConfigMap
├── grafana-deployment.yaml             # Deployment + Service + Secret
├── prometheus-config.yaml              # ConfigMap data (scrape targets)
├── grafana-dashboards-configmap.yaml   # Pre-built dashboard definitions
└── observability-setup.md              # This file
```

---

## 🎯 Next Steps

1. Create YAML files using templates
2. Update microservice code (add `/metrics`)
3. Deploy Prometheus: `kubectl apply -f K8s/prometheus-deployment.yaml`
4. Deploy Grafana: `kubectl apply -f K8s/grafana-deployment.yaml`
5. Update microservices with annotations and redeploy

---

## 📊 Default Metrics Scraped

### Prometheus
- `up{job="..."}` - Service availability
- `scrape_duration_seconds` - Scrape latency
- `prometheus_sd_*` - Service discovery metrics

### Application Level (from `/metrics`)
- `http_requests_total` - Total HTTP requests
- `http_request_duration_seconds` - Request latency
- `process_*` - JVM/Process metrics

---

## 🔐 Security Notes

- Prometheus: Internal access only (no auth by default)
- Grafana: Default admin/admin → **CHANGE IMMEDIATELY**
- ServiceMonitor: Secured via RBAC
- Store credentials in Kubernetes Secrets

