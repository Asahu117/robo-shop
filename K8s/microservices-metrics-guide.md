# Microservice Metrics Integration Guide

## Quick Status Check

| Service | Framework | Status | Action |
|---------|-----------|--------|--------|
| **cart** | Node.js | ✅ Ready | Already has `/metrics` with `prom-client` |
| **payment** | Python | ✅ Ready | Already has `/metrics` with `prometheus_client` |
| **catalogue** | Node.js | ❌ TODO | Add `prom-client` package + `/metrics` endpoint |
| **user** | Node.js | ❌ TODO | Add `prom-client` package + `/metrics` endpoint |
| **shipping** | Java | ❌ TODO | Add Micrometer + Spring Boot Actuator |
| **ratings** | Unknown | ❌ TODO | Add metrics library + endpoint |
| **web** | Unknown | ❌ TODO | Add metrics library + endpoint |

---

## Implementation Steps

### 1️⃣ Node.js Services (catalogue, user)

#### File: `catalogue/package.json`
```json
{
  "dependencies": {
    "express": "^4.x",
    "prom-client": "^15.0.0"
  }
}
```

#### File: `catalogue/server.js` (Add these lines)
```javascript
const express = require('express');
const promClient = require('prom-client');

const app = express();

// Initialize Prometheus metrics
const register = new promClient.Registry();
promClient.collectDefaultMetrics({ register });

// Define custom metrics
const httpRequestDuration = new promClient.Histogram({
  name: 'http_request_duration_seconds',
  help: 'Duration of HTTP requests in seconds',
  labelNames: ['method', 'route', 'status_code'],
  registers: [register]
});

const httpRequestTotal = new promClient.Counter({
  name: 'http_requests_total',
  help: 'Total HTTP requests',
  labelNames: ['method', 'route', 'status_code'],
  registers: [register]
});

// Middleware to track metrics
app.use((req, res, next) => {
  const start = Date.now();
  res.on('finish', () => {
    const duration = (Date.now() - start) / 1000;
    httpRequestDuration
      .labels(req.method, req.route?.path || req.path, res.statusCode)
      .observe(duration);
    httpRequestTotal
      .labels(req.method, req.route?.path || req.path, res.statusCode)
      .inc();
  });
  next();
});

// Metrics endpoint
app.get('/metrics', (req, res) => {
  res.set('Content-Type', register.contentType);
  res.end(register.metrics());
});

// Your existing routes here...

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`Metrics available at http://localhost:${PORT}/metrics`);
});
```

#### Commands:
```bash
cd catalogue
npm install prom-client
# Update server.js with code above
npm start
```

**Repeat for `user/` service with same pattern**

---

### 2️⃣ Python Services (ratings, payment - if needed)

#### File: `ratings/requirements.txt`
```
flask==2.x.x
prometheus-client==0.18.0
```

#### File: `ratings/app.py` (Add these lines)
```python
from flask import Flask, Response
from prometheus_client import Counter, Histogram, generate_latest, REGISTRY
import time

app = Flask(__name__)

# Custom metrics
request_count = Counter(
    'http_requests_total',
    'Total HTTP requests',
    ['method', 'endpoint', 'status']
)

request_duration = Histogram(
    'http_request_duration_seconds',
    'HTTP request duration',
    ['method', 'endpoint']
)

# Middleware
@app.before_request
def before_request():
    request.start_time = time.time()

@app.after_request
def after_request(response):
    duration = time.time() - request.start_time
    request_duration.labels(
        method=request.method,
        endpoint=request.path
    ).observe(duration)
    request_count.labels(
        method=request.method,
        endpoint=request.path,
        status=response.status_code
    ).inc()
    return response

# Metrics endpoint
@app.route('/metrics', methods=['GET'])
def metrics():
    return Response(generate_latest(REGISTRY), mimetype='text/plain')

# Your existing routes...

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
```

#### Commands:
```bash
cd ratings
pip install -r requirements.txt
python app.py
```

---

### 3️⃣ Java Services (shipping)

#### File: `shipping/pom.xml` (Add dependencies)
```xml
<dependencies>
  <!-- Spring Boot Starter Web -->
  <dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
  </dependency>

  <!-- Micrometer Prometheus -->
  <dependency>
    <groupId>io.micrometer</groupId>
    <artifactId>micrometer-registry-prometheus</artifactId>
  </dependency>

  <!-- Spring Boot Actuator -->
  <dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
  </dependency>
</dependencies>
```

#### File: `shipping/application.properties`
```properties
# Enable Prometheus metrics
management.endpoints.web.exposure.include=health,prometheus
management.endpoint.health.show-details=always
management.metrics.enable.jvm=true
management.metrics.enable.process=true
```

#### File: `shipping/application.yml`
```yaml
management:
  endpoints:
    web:
      exposure:
        include: health,prometheus
  endpoint:
    health:
      show-details: always
  metrics:
    enable:
      jvm: true
      process: true
```

#### Commands:
```bash
cd shipping
mvn clean install
java -jar target/shipping.jar
# Metrics available at: http://localhost:8080/actuator/prometheus
```

---

## 🚀 Deployment with Kubernetes Annotations

Update **all** microservice deployments to include Prometheus scrape annotations:

```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: cart
  namespace: default
spec:
  replicas: 1
  selector:
    matchLabels:
      app: cart
  template:
    metadata:
      labels:
        app: cart
      annotations:
        prometheus.io/scrape: "true"      # Enable scraping
        prometheus.io/port: "8080"        # Metrics port
        prometheus.io/path: "/metrics"    # Metrics path
    spec:
      containers:
      - name: cart
        image: cart:latest
        ports:
        - containerPort: 8080
        env:
        - name: PORT
          value: "8080"
```

---

## ✅ Verification Steps

### 1. Check `/metrics` endpoints locally
```bash
# For Node.js services
curl http://localhost:8080/metrics

# For Python services
curl http://localhost:8080/metrics

# For Java services (Actuator)
curl http://localhost:8080/actuator/prometheus
```

### 2. Check Prometheus is scraping
```bash
# Port-forward to Prometheus
kubectl port-forward svc/prometheus 9090:9090

# Visit http://localhost:9090/targets
# All services should show as UP
```

### 3. Query metrics in Grafana
```bash
# Port-forward to Grafana
kubectl port-forward svc/grafana 3000:3000

# Login: admin / admin123
# Visit http://localhost:3000/dashboards
```

---

## 📊 Key Metrics to Monitor

```promql
# Service availability
up{job="microservices"}

# Request rate (5-minute average)
rate(http_requests_total[5m])

# P95 latency
histogram_quantile(0.95, rate(http_request_duration_seconds_bucket[5m]))

# Error rate
rate(http_requests_total{status=~"5.."}[5m])

# JVM memory usage (Java only)
jvm_memory_used_bytes

# Python memory usage
process_resident_memory_bytes
```

---

## 📝 Deployment Order

```bash
# 1. Deploy Prometheus
kubectl apply -f K8s/prometheus-deployment.yaml

# 2. Deploy Grafana
kubectl apply -f K8s/grafana-deployment.yaml

# 3. Update microservices with metrics
# - Add library to package.json / requirements.txt / pom.xml
# - Add /metrics endpoint to code
# - Update deployment YAML with Prometheus annotations
# - Redeploy services

# 4. Verify scraping in Prometheus UI
kubectl port-forward svc/prometheus 9090:9090
# Visit http://localhost:9090/targets
```

---

## 🔐 Security Notes

1. **Grafana Default Password**: Change `admin123` in production!
2. **Prometheus Access**: Currently internal only - add auth/TLS for production
3. **Metrics Exposure**: `/metrics` endpoints expose internal state - restrict network access
4. **RBAC**: Prometheus has ClusterRole to read pod/node metrics - review permissions

---

## 🆘 Troubleshooting

| Issue | Solution |
|-------|----------|
| Prometheus target `DOWN` | Check service DNS, port, and `/metrics` path |
| No metrics in Grafana | Verify Prometheus datasource is configured |
| High memory usage | Increase retention period in prometheus.yml |
| Grafana won't start | Check PVC permissions, check logs |

