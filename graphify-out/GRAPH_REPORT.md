# Graph Report - .  (2026-05-13)

## Corpus Check
- 149 files · ~59,952 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 501 nodes · 575 edges · 63 communities (42 shown, 21 thin omitted)
- Extraction: 81% EXTRACTED · 19% INFERRED · 0% AMBIGUOUS · INFERRED: 108 edges (avg confidence: 0.8)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Core Microservices Stack|Core Microservices Stack]]
- [[_COMMUNITY_PHP Service Implementations|PHP Service Implementations]]
- [[_COMMUNITY_Helm Chart Configuration|Helm Chart Configuration]]
- [[_COMMUNITY_Helm Deployment Templates|Helm Deployment Templates]]
- [[_COMMUNITY_Shipping Data Layer|Shipping Data Layer]]
- [[_COMMUNITY_Web Frontend UI|Web Frontend UI]]
- [[_COMMUNITY_Shipping Calculator|Shipping Calculator]]
- [[_COMMUNITY_Cart Helper Module|Cart Helper Module]]
- [[_COMMUNITY_Spring Observability|Spring Observability]]
- [[_COMMUNITY_AWS EKS Infrastructure|AWS EKS Infrastructure]]
- [[_COMMUNITY_Kernel and JPA Config|Kernel and JPA Config]]
- [[_COMMUNITY_Frontend Controllers|Frontend Controllers]]
- [[_COMMUNITY_Load Testing|Load Testing]]
- [[_COMMUNITY_Health Check|Health Check]]
- [[_COMMUNITY_Instana Headers Logging|Instana Headers Logging]]
- [[_COMMUNITY_Catalogue Service|Catalogue Service]]
- [[_COMMUNITY_MongoDB Data Access|MongoDB Data Access]]
- [[_COMMUNITY_Retryable DataSource|Retryable DataSource]]
- [[_COMMUNITY_Instana EUM Config|Instana EUM Config]]
- [[_COMMUNITY_UHJ Robot Branding|UHJ Robot Branding]]
- [[_COMMUNITY_SHCE Robot Branding|SHCE Robot Branding]]
- [[_COMMUNITY_STAN Robot Branding|STAN Robot Branding]]
- [[_COMMUNITY_Instana Icon Branding|Instana Icon Branding]]
- [[_COMMUNITY_Graph Visualization|Graph Visualization]]
- [[_COMMUNITY_WebPayment Services|Web/Payment Services]]
- [[_COMMUNITY_Instana Logo|Instana Logo]]
- [[_COMMUNITY_RMC Robot Branding|RMC Robot Branding]]
- [[_COMMUNITY_HPTD Robot Branding|HPTD Robot Branding]]
- [[_COMMUNITY_STAN2 Robot Branding|STAN2 Robot Branding]]
- [[_COMMUNITY_Monitoring Robot Branding|Monitoring Robot Branding]]
- [[_COMMUNITY_Instana Agent  Istio|Instana Agent / Istio]]
- [[_COMMUNITY_Watson AI Branding|Watson AI Branding]]
- [[_COMMUNITY_EMM Robot Branding|EMM Robot Branding]]
- [[_COMMUNITY_Ewooid Robot Branding|Ewooid Robot Branding]]
- [[_COMMUNITY_Dispatch  RabbitMQ|Dispatch / RabbitMQ]]
- [[_COMMUNITY_RBAC Security|RBAC Security]]
- [[_COMMUNITY_Auto-Complete JS|Auto-Complete JS]]
- [[_COMMUNITY_AngularJS Shell|AngularJS Shell]]
- [[_COMMUNITY_Alpha Robot Branding|Alpha Robot Branding]]
- [[_COMMUNITY_Chatbot Branding|Chatbot Branding]]
- [[_COMMUNITY_Blue Robot Branding|Blue Robot Branding]]
- [[_COMMUNITY_Graphify Config|Graphify Config]]
- [[_COMMUNITY_K8s Monitoring|K8s Monitoring]]
- [[_COMMUNITY_Standalone Payment|Standalone Payment]]
- [[_COMMUNITY_MongoDB Infra|MongoDB Infra]]
- [[_COMMUNITY_MySQL Infra|MySQL Infra]]
- [[_COMMUNITY_Ratings Infra|Ratings Infra]]
- [[_COMMUNITY_Redis Infra|Redis Infra]]
- [[_COMMUNITY_Shipping Infra|Shipping Infra]]
- [[_COMMUNITY_User Infra|User Infra]]
- [[_COMMUNITY_Cart Template|Cart Template]]
- [[_COMMUNITY_Payment Template|Payment Template]]
- [[_COMMUNITY_Shipping Template|Shipping Template]]
- [[_COMMUNITY_Docker Network|Docker Network]]
- [[_COMMUNITY_Helm Payment Config|Helm Payment Config]]

## God Nodes (most connected - your core abstractions)
1. `Stan's Robot Shop Helm Chart` - 25 edges
2. `Robo Shop Helm Chart` - 25 edges
3. `City` - 16 edges
4. `Microservices Metrics Integration Guide` - 13 edges
5. `Controller` - 12 edges
6. `Payment Service` - 12 edges
7. `Release ServiceAccount` - 12 edges
8. `Web Frontend Service` - 12 edges
9. `Robot Shop Resource Quota` - 12 edges
10. `error()` - 11 edges

## Surprising Connections (you probably didn't know these)
- `Stan's Robot Shop Helm Chart (EKS)` --semantically_similar_to--> `Stan's Robot Shop Helm Chart`  [INFERRED] [semantically similar]
  EKS/helm/README.md → K8s/helm/README.md
- `Ratings Service` --conceptually_related_to--> `Ratings Table (sku, avg_rating, rating_count)`  [INFERRED]
  docker-compose.yaml → mysql/scripts/20-ratings.sql
- `Notes` --conceptually_related_to--> `EKS on Fargate`  [AMBIGUOUS]
  Notes.txt → EKS/02-eks-cluster-setup.md
- `Cloud-Native Microservices Platform on EKS` --references--> `Graphify Knowledge Graph Documentation`  [INFERRED]
  README.md → GEMINI.md
- `Cloud-Native Microservices Platform on EKS` --references--> `Graphify Knowledge Graph Documentation`  [INFERRED]
  README.md → CLAUDE.md

## Hyperedges (group relationships)
- **RBAC PodSecurityPolicy Enforcement System** — clusterrole_release, clusterrolebinding_release, serviceaccount_release, podsecuritypolicy_release, cart_deployment, catalogue_deployment, dispatch_deployment, mongodb_deployment, mysql_deployment, payment_deployment, rabbitmq_deployment, ratings_deployment, redis_statefulset, shipping_deployment [EXTRACTED 0.95]
- **Robo Shop Microservices Application** — chart_robo_shop, cart_deployment, catalogue_deployment, dispatch_deployment, mongodb_deployment, mysql_deployment, payment_deployment, rabbitmq_deployment, ratings_deployment, redis_statefulset, shipping_deployment, ingress_robo_shop, cart_service, catalogue_service, dispatch_service, mongodb_service, mysql_service, payment_service, rabbitmq_service, ratings_service, redis_service [INFERRED 0.95]
- **Robot Shop Application Stack** — docker_compose_mongodb, docker_compose_redis, docker_compose_rabbitmq, docker_compose_catalogue, docker_compose_user, docker_compose_cart, docker_compose_mysql, docker_compose_shipping, docker_compose_ratings, docker_compose_payment, docker_compose_dispatch, docker_compose_web [EXTRACTED 1.00]
- **Observability Stack (Prometheus + Grafana + Metrics)** — prometheus_deployment_prometheus, grafana_deployment_grafana, prometheus_deployment_config, grafana_deployment_datasources, grafana_deployment_dashboards [EXTRACTED 1.00]
- **EKS Helm Deployment Group** — eks_helm_templates_shipping_service, eks_helm_templates_user_deployment, eks_helm_templates_user_service, eks_helm_templates_web_deployment, eks_helm_templates_web_service, eks_helm_values_image, eks_helm_values_eum, eks_helm_values_psp, eks_helm_values_payment_gateway [EXTRACTED 1.00]
- **Istio Canary Deployment for Payment** — canary_canary_test, canary_robotshop_canary, payment_deployment_fix_payment_fix, docker_compose_payment [EXTRACTED 1.00]
- **Metrics Integration Initiative** — microservices_metrics_guide, observability_index, observability_setup, prometheus_deployment_prometheus, grafana_deployment_grafana, metrics_concept_prom_client, metrics_concept_micrometer, metrics_concept_prometheus_client [EXTRACTED 1.00]
- **RobotShop Microservices System** — dispatch_deployment_dispatch, mongodb_deployment_mongodb, mysql_deployment_mysql, payment_deployment_payment, rabbitmq_deployment_rabbitmq, ratings_deployment_ratings, redis_statefulset_redis, shipping_deployment_shipping, user_deployment_user, web_deployment_web [INFERRED 0.90]

## Communities (63 total, 21 thin omitted)

### Community 0 - "Core Microservices Stack"
Cohesion: 0.07
Nodes (49): Ratings Database Schema, Ratings Table (sku, avg_rating, rating_count), Canary Test Istio DestinationRule, Canary Istio VirtualService, Robot Shop Helm Chart v1.1.0, Cart Service, Catalogue Service, Dispatch Service (+41 more)

### Community 1 - "PHP Service Implementations"
Cohesion: 0.07
Nodes (17): CatalogueService, Database, HttpUser, InstanaDataCenterListener, countItems(), exception_handler(), health(), metrics() (+9 more)

### Community 2 - "Helm Chart Configuration"
Cohesion: 0.06
Nodes (34): Stan's Robot Shop Helm Chart (EKS), Helm Value: redis.storageClassName (EKS default gp2), Default Payment Provider: https://www.paypal.com, Helm Values: eum.key + eum.url (End-User Monitoring), Helm Value: image.repo, Helm Value: image.version, Minikube/Minishift NodePort Usage, Helm Value: nodeport (+26 more)

### Community 3 - "Helm Deployment Templates"
Cohesion: 0.11
Nodes (32): Cart Deployment, Cart Service, Catalogue Deployment, Catalogue Service, Robo Shop Helm Chart, Release ClusterRole, Release ClusterRoleBinding, Dispatch Deployment (+24 more)

### Community 4 - "Shipping Data Layer"
Cohesion: 0.07
Nodes (4): CityRepository, CodeRepository, Controller, Ship

### Community 5 - "Web Frontend UI"
Cohesion: 0.09
Nodes (28): Graphify Knowledge Graph Documentation, Frontend User Interaction Management, Graphify Knowledge Graph Documentation, User Authentication (Login/Register), Order History Display, Login and Registration Page Template, Add to Cart Functionality, Product Inventory Check (+20 more)

### Community 7 - "Cart Helper Module"
Cohesion: 0.1
Nodes (3): CartHelper, Code, Publisher

### Community 8 - "Spring Observability"
Cohesion: 0.23
Nodes (6): BeanPostProcessor, HandlerInterceptorAdapter, DataSourcePostProcessor, InstanaDatacenterTagInterceptor, ShippingServiceApplication, WebMvcConfigurer

### Community 9 - "AWS EKS Infrastructure"
Cohesion: 0.16
Nodes (14): AWS EBS CSI Driver, EKS on Fargate, AWS Load Balancer Controller, ALB Controller Setup, EKS Cluster: roboshop, EKS Cluster Setup, EBS CSI Driver Setup, IAM OIDC Provider Setup (+6 more)

### Community 11 - "Frontend Controllers"
Cohesion: 0.3
Nodes (10): buildauto(), clearMessage(), getCategories(), getUniqueid(), loadCart(), loadCodes(), loadHistory(), loadProduct() (+2 more)

### Community 12 - "Load Testing"
Cohesion: 0.18
Nodes (11): Stan's Robot Shop Install (Kubernetes), Horizontal Pod Autoscaler (HPA), K8s/autoscale.sh, K8s/load-deployment.yaml, Load Config Environment Variables (HOST, NUM_CLIENTS, RUN_TIME, ERROR, SILENT), load-gen.sh, Load Generation, Kubernetes metrics-server (+3 more)

### Community 15 - "Catalogue Service"
Cohesion: 0.48
Nodes (5): calcTax(), calcTotal(), getProduct(), mergeList(), saveCart()

### Community 18 - "Instana EUM Config"
Cohesion: 0.33
Nodes (6): ENV: INSTANA_EUM_KEY, Instana End User Monitoring (EUM), Microservices Ecommerce Demo App, EUM Disabled Placeholder, Instana EUM Snippet Template, Splash Page (Welcome / Tech Stack)

### Community 19 - "UHJ Robot Branding"
Cohesion: 0.47
Nodes (6): Blue-Gray Color Palette, Branding Asset, Gear Emblem, UHJ Robot Mascot, Single-Eye (Cyclops) Design, Wheeled Base

### Community 20 - "SHCE Robot Branding"
Cohesion: 0.33
Nodes (6): Antennae, Blue-Gray Color Palette, Branding Asset, Claw Arms, Gear Emblem, SHCE Robot Mascot

### Community 21 - "STAN Robot Branding"
Cohesion: 0.47
Nodes (6): Branding Asset, Cyan Glow Aura, Friendly Robot Character Design, STAN Robot Mascot, STAN Wordmark, White and Gray Color Palette

### Community 22 - "Instana Icon Branding"
Cohesion: 0.33
Nodes (6): Branding Asset, Dark Gray Color Palette, Gray Gradient Base/Shadow, Instana Icon (Square), Robot Head Logo Mark, Teal Eye Accents

### Community 23 - "Graph Visualization"
Cohesion: 0.4
Nodes (6): Dense Connectivity Pattern, Graph Edges (Links), Force-Directed Layout, Purple-to-Teal Gradient Background, Network Graph Visualization, Graph Nodes (Points)

### Community 24 - "Web/Payment Services"
Cohesion: 0.33
Nodes (6): Payment Deployment, Payment Service, Helm Values Configuration, Web Deployment, Web OpenShift Route, Web Service

### Community 25 - "Instana Logo"
Cohesion: 0.5
Nodes (5): Instana Logo, Minimal Flat Logo Style, Robot Mascot (Head Icon), Teal Accent Color (Eyes), INSTANA Wordmark

### Community 26 - "RMC Robot Branding"
Cohesion: 0.4
Nodes (5): Blue/Gray Color Palette, Branding Asset, Claw Hands, Gear Emblem, RMC Robot Mascot

### Community 27 - "HPTD Robot Branding"
Cohesion: 0.4
Nodes (5): Automation Theme, Blue Color Palette, Branding Asset, Gear Icons, HPTD Robot Mascot

### Community 28 - "STAN2 Robot Branding"
Cohesion: 0.5
Nodes (5): Branding Asset, Friendly Robot Character Design, Navy and Gray Color Palette, STAN Robot Mascot, STAN Wordmark

### Community 29 - "Monitoring Robot Branding"
Cohesion: 0.4
Nodes (5): Blue Color Palette, Branding Asset, Monitoring/Status Theme, Robot Mascot, Status Gauge

### Community 30 - "Instana Agent / Istio"
Cohesion: 0.5
Nodes (4): instana-agent Helm Chart (stable/instana-agent), Instana Agent Install (Kubernetes), Istio Ingress Gateway (istio-ingressgateway service), Istio Service Mesh

### Community 31 - "Watson AI Branding"
Cohesion: 0.67
Nodes (4): AI Branding Asset, Blue Gradient Color Palette, Watson Logo Mark, Radiating Rays Motif

### Community 32 - "EMM Robot Branding"
Cohesion: 0.83
Nodes (4): Automation Gears, Mechanical Claw Arms, EMM Robot Icon, Robotic Assistant

### Community 33 - "Ewooid Robot Branding"
Cohesion: 0.5
Nodes (4): Blue-Gray Color Palette, Branding Asset, Flat Vector Icon Style, Ewooid Robot Mascot

### Community 34 - "Dispatch / RabbitMQ"
Cohesion: 0.5
Nodes (4): Dispatch Deployment, Dispatch Service, RabbitMQ Deployment, RabbitMQ Service

### Community 35 - "RBAC Security"
Cohesion: 0.5
Nodes (4): ClusterRole, ClusterRoleBinding, PodSecurityPolicy, ServiceAccount

### Community 37 - "AngularJS Shell"
Cohesion: 0.67
Nodes (3): AngularJS 1.6.7, Stan's Robot Shop, Index Page Shell (AngularJS)

### Community 38 - "Alpha Robot Branding"
Cohesion: 0.67
Nodes (3): Blue Color Palette, Branding Asset, Aplha Robot Mascot

### Community 39 - "Chatbot Branding"
Cohesion: 0.67
Nodes (3): Chatbot Assistant, Robot Mascot, Terminal Panel

### Community 40 - "Blue Robot Branding"
Cohesion: 0.67
Nodes (3): Claw Arms, Gear Motif, Blue Robot Mascot

## Ambiguous Edges - Review These
- `Notes` → `EKS on Fargate`  [AMBIGUOUS]
  Notes.txt · relation: conceptually_related_to

## Knowledge Gaps
- **145 isolated node(s):** `on_start is called when a Locust start before any task is scheduled`, `Agent Instructions`, `graphify Knowledge Graph (graphify-out/)`, `Rationale: avoid Fargate for Redis + PV`, `uWSGI` (+140 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **21 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Notes` and `EKS on Fargate`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `Controller` connect `Shipping Data Layer` to `Kernel and JPA Config`, `Cart Helper Module`?**
  _High betweenness centrality (0.035) - this node is a cross-community bridge._
- **Why does `queueOrder()` connect `PHP Service Implementations` to `Kernel and JPA Config`?**
  _High betweenness centrality (0.028) - this node is a cross-community bridge._
- **What connects `on_start is called when a Locust start before any task is scheduled`, `Agent Instructions`, `graphify Knowledge Graph (graphify-out/)` to the rest of the system?**
  _145 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Core Microservices Stack` be split into smaller, more focused modules?**
  _Cohesion score 0.07 - nodes in this community are weakly interconnected._
- **Should `PHP Service Implementations` be split into smaller, more focused modules?**
  _Cohesion score 0.07 - nodes in this community are weakly interconnected._
- **Should `Helm Chart Configuration` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._