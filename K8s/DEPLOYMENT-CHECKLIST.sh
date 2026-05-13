#!/bin/bash
# Kubernetes Observability - Deployment Checklist & Commands

set -e

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║      Kubernetes Observability - Deployment Checklist             ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo ""

# Color codes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}[STEP 1] Deploy Prometheus${NC}"
echo "Creating Prometheus StatefulSet, ConfigMap, RBAC, and PVC..."
kubectl apply -f prometheus-deployment.yaml
echo -e "${GREEN}✓ Prometheus deployment created${NC}"
echo ""

echo -e "${BLUE}[STEP 2] Deploy Grafana${NC}"
echo "Creating Grafana Deployment, Service, ConfigMaps, and PVC..."
kubectl apply -f grafana-deployment.yaml
echo -e "${GREEN}✓ Grafana deployment created${NC}"
echo ""

echo -e "${BLUE}[STEP 3] Wait for pods to be ready${NC}"
echo "Waiting for Prometheus StatefulSet..."
kubectl wait --for=condition=ready pod -l app=prometheus --timeout=300s 2>/dev/null || echo "Still starting..."
echo "Waiting for Grafana Deployment..."
kubectl wait --for=condition=ready pod -l app=grafana --timeout=300s 2>/dev/null || echo "Still starting..."
echo -e "${GREEN}✓ Pods are ready${NC}"
echo ""

echo -e "${BLUE}[STEP 4] Check deployment status${NC}"
kubectl get statefulsets,deployments,svc,pvc -l "app in (prometheus,grafana)"
echo ""

echo -e "${YELLOW}[NEXT] Update microservices with metrics${NC}"
echo ""
echo "1. Add /metrics endpoints to services:"
echo "   - Follow: microservices-metrics-guide.md"
echo "   - Services to update: catalogue, user, shipping, ratings, web"
echo ""

echo -e "${YELLOW}[VERIFY] Test Prometheus scraping${NC}"
echo ""
echo "Run these commands to verify:"
echo ""
echo "# Port-forward Prometheus (in another terminal)"
echo "  kubectl port-forward svc/prometheus 9090:9090"
echo "  # Visit http://localhost:9090/targets"
echo "  # All microservices should show UP when /metrics endpoints are added"
echo ""

echo -e "${YELLOW}[VERIFY] Access Grafana dashboards${NC}"
echo ""
echo "# Port-forward Grafana (in another terminal)"
echo "  kubectl port-forward svc/grafana 3000:3000"
echo "  # Visit http://localhost:3000"
echo "  # Login: admin / admin123"
echo "  # ⚠️  CHANGE PASSWORD IMMEDIATELY in production"
echo ""

echo -e "${YELLOW}[VERIFY] Check Prometheus ServiceAccount RBAC${NC}"
kubectl get clusterrole prometheus
kubectl get clusterrolebinding prometheus
echo ""

echo -e "${GREEN}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✓ Observability infrastructure deployed!${NC}"
echo -e "${GREEN}════════════════════════════════════════════════════════════${NC}"
echo ""
echo "Next steps:"
echo "1. Read: K8s/microservices-metrics-guide.md"
echo "2. Update each microservice with /metrics endpoint"
echo "3. Redeploy services with Prometheus annotations"
echo "4. Verify targets in Prometheus UI"
echo "5. Configure dashboards in Grafana"
echo ""
