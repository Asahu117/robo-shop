# Graph Report - .  (2026-05-11)

## Corpus Check
- 75 files · ~52,948 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 362 nodes · 387 edges · 42 communities detected
- Extraction: 83% EXTRACTED · 16% INFERRED · 0% AMBIGUOUS · INFERRED: 63 edges (avg confidence: 0.8)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Php Catalogueservice|Php Catalogueservice]]
- [[_COMMUNITY_Value Microservice|Value Microservice]]
- [[_COMMUNITY_Java Ship|Java Ship]]
- [[_COMMUNITY_Carthelper Java|Carthelper Java]]
- [[_COMMUNITY_Calculator Java|Calculator Java]]
- [[_COMMUNITY_Shippingserviceapplication Java|Shippingserviceapplication Java]]
- [[_COMMUNITY_Eks Aws|Eks Aws]]
- [[_COMMUNITY_Kernel Jpaconfig|Kernel Jpaconfig]]
- [[_COMMUNITY_Buildauto Clearmessage|Buildauto Clearmessage]]
- [[_COMMUNITY_Load Shop|Load Shop]]
- [[_COMMUNITY_Php Healthcheckservice|Php Healthcheckservice]]
- [[_COMMUNITY_Instanaheadersloggingprocessor Php|Instanaheadersloggingprocessor Php]]
- [[_COMMUNITY_Server Calctax|Server Calctax]]
- [[_COMMUNITY_Server Mongoconnect|Server Mongoconnect]]
- [[_COMMUNITY_Retryabledatasource Java|Retryabledatasource Java]]
- [[_COMMUNITY_Eum Instana|Eum Instana]]
- [[_COMMUNITY_Antennae Blue|Antennae Blue]]
- [[_COMMUNITY_Blue Gray|Blue Gray]]
- [[_COMMUNITY_Graph Dense|Graph Dense]]
- [[_COMMUNITY_Gray Branding|Gray Branding]]
- [[_COMMUNITY_Stan Branding|Stan Branding]]
- [[_COMMUNITY_Database Php|Database Php]]
- [[_COMMUNITY_Instanadatacenterlistener Php|Instanadatacenterlistener Php]]
- [[_COMMUNITY_Automation Theme|Automation Theme]]
- [[_COMMUNITY_Status Blue|Status Blue]]
- [[_COMMUNITY_Blue Gray|Blue Gray]]
- [[_COMMUNITY_Stan Branding|Stan Branding]]
- [[_COMMUNITY_Instana Minimal|Instana Minimal]]
- [[_COMMUNITY_Instana Agent|Instana Agent]]
- [[_COMMUNITY_Automation Gears|Automation Gears]]
- [[_COMMUNITY_Blue Gray|Blue Gray]]
- [[_COMMUNITY_Branding Blue|Branding Blue]]
- [[_COMMUNITY_Auto Complete|Auto Complete]]
- [[_COMMUNITY_Angularjs Stan|Angularjs Stan]]
- [[_COMMUNITY_Blue Color|Blue Color]]
- [[_COMMUNITY_Chatbot Assistant|Chatbot Assistant]]
- [[_COMMUNITY_Claw Arms|Claw Arms]]
- [[_COMMUNITY_Graphify Knowledge|Graphify Knowledge]]
- [[_COMMUNITY_Instana Dashboards|Instana Dashboards]]
- [[_COMMUNITY_Cart Template|Cart Template]]
- [[_COMMUNITY_Shipping Template|Shipping Template]]
- [[_COMMUNITY_Payment Order|Payment Order]]

## God Nodes (most connected - your core abstractions)
1. `Stan's Robot Shop Helm Chart` - 25 edges
2. `City` - 16 edges
3. `Controller` - 12 edges
4. `error()` - 11 edges
5. `payment service` - 10 edges
6. `Ship` - 8 edges
7. `Code` - 8 edges
8. `Kernel` - 7 edges
9. `InstanaHeadersLoggingProcessor` - 7 edges
10. `pay()` - 6 edges

## Surprising Connections (you probably didn't know these)
- `Stan's Robot Shop Helm Chart (EKS)` --semantically_similar_to--> `Stan's Robot Shop Helm Chart`  [INFERRED] [semantically similar]
  EKS/helm/README.md → K8s/helm/README.md
- `Notes` --conceptually_related_to--> `EKS on Fargate`  [AMBIGUOUS]
  Notes.txt → EKS/02-eks-cluster-setup.md
- `Payment Error Injection (ERROR=1)` --conceptually_related_to--> `payment service`  [EXTRACTED]
  load-gen/README.md → payment/requirements.txt
- `pika (RabbitMQ client)` --conceptually_related_to--> `rabbitmq service`  [INFERRED]
  payment/requirements.txt → K8s/helm/README.md
- `Stan's Robot Shop Install (Kubernetes)` --conceptually_related_to--> `robo-shop Kubernetes Namespace`  [EXTRACTED]
  K8s/README.md → load-gen/README.md

## Hyperedges (group relationships)
- **Checkout Flow UI** — web_static_cart_html, web_static_shipping_html, web_static_payment_html [INFERRED 0.72]
- **Robot Shop Microservices** — robot_shop_microservice_cart, robot_shop_microservice_catalogue, robot_shop_microservice_dispatch, robot_shop_microservice_mongodb, robot_shop_microservice_mysql, payment_service, robot_shop_microservice_rabbitmq, robot_shop_microservice_ratings, robot_shop_microservice_redis, robot_shop_microservice_shipping, robot_shop_microservice_user, robot_shop_microservice_web [EXTRACTED 1.00]
- **Payment Service Runtime/Observability Stack** — payment_service, payment_requirements_flask, payment_requirements_uwsgi, payment_requirements_prometheus_client, payment_requirements_opentracing, payment_requirements_instana [INFERRED 0.82]
- **CNA Bot Identity** — cna_robot_mascot, cna_terminal_panel, cna_chatbot_assistant [INFERRED 0.72]
- **Robot Visual Identity** — emm_robot_icon, emm_robotic_assistant, emm_automation_gears, emm_mechanical_claw_arms [INFERRED 0.84]
- **Ewooid Robot Visual Identity** — ewooid_robot_mascot, ewooid_blue_gray_color_palette, ewooid_flat_vector_icon_style [INFERRED 0.82]
- **HPTD Robot Visual Identity** — hptd_robot_mascot, hptd_blue_color_palette, hptd_gear_icons [INFERRED 0.80]
- **RED Bot Visual Identity** — red_robot_mascot, red_blue_color_palette, red_status_gauge [INFERRED 0.80]
- **RMC Robot Visual Identity** — rmc_robot_mascot, rmc_gear_emblem, rmc_blue_gray_color_palette, rmc_claw_hands [INFERRED 0.80]
- **SHCE Robot Visual Identity** — shce_robot_mascot, shce_blue_gray_color_palette, shce_gear_emblem, shce_claw_arms [INFERRED 0.83]
- **STAN Visual Identity** — stan_1_robot_mascot, stan_1_stan_wordmark, stan_1_navy_gray_color_palette [INFERRED 0.82]
- **UHJ Robot Visual Identity** — uhj_robot_mascot, uhj_blue_gray_color_palette, uhj_gear_emblem, uhj_single_eye_design [INFERRED 0.83]
- **Watson Visual Identity** — watson_logo, watson_blue_gradient_palette, watson_radiating_rays [INFERRED 0.80]
- **Instana Visual Identity** — placeholder_instana_logo, placeholder_instana_robot_mascot, placeholder_instana_wordmark, placeholder_instana_teal_accent [INFERRED 0.82]
- **Graph Visualization Elements** — graph_network_graph_visualization, graph_nodes_points, graph_edges_links, graph_gradient_background [INFERRED 0.80]
- **Instana Visual Identity** — instana_icon_square, instana_robot_head_logo, instana_teal_eye_accents, instana_dark_gray_palette [INFERRED 0.82]
- **STAN Visual Identity** — stan_robot_mascot, stan_stan_wordmark, stan_cyan_glow_aura, stan_white_gray_color_palette [INFERRED 0.83]

## Communities

### Community 0 - "Php Catalogueservice"
Cohesion: 0.09
Nodes (15): CatalogueService, HttpUser, countItems(), exception_handler(), health(), metrics(), pay(), queueOrder() (+7 more)

### Community 1 - "Value Microservice"
Cohesion: 0.06
Nodes (34): Stan's Robot Shop Helm Chart (EKS), Helm Value: redis.storageClassName (EKS default gp2), Default Payment Provider: https://www.paypal.com, Helm Values: eum.key + eum.url (End-User Monitoring), Helm Value: image.repo, Helm Value: image.version, Minikube/Minishift NodePort Usage, Helm Value: nodeport (+26 more)

### Community 2 - "Java Ship"
Cohesion: 0.07
Nodes (4): CityRepository, CodeRepository, Controller, Ship

### Community 3 - "Carthelper Java"
Cohesion: 0.1
Nodes (3): CartHelper, Code, Publisher

### Community 4 - "Calculator Java"
Cohesion: 0.1
Nodes (2): Calculator, City

### Community 5 - "Shippingserviceapplication Java"
Cohesion: 0.23
Nodes (6): BeanPostProcessor, HandlerInterceptorAdapter, DataSourcePostProcessor, InstanaDatacenterTagInterceptor, ShippingServiceApplication, WebMvcConfigurer

### Community 6 - "Eks Aws"
Cohesion: 0.16
Nodes (14): AWS EBS CSI Driver, EKS on Fargate, AWS Load Balancer Controller, ALB Controller Setup, EKS Cluster: roboshop, EKS Cluster Setup, EBS CSI Driver Setup, IAM OIDC Provider Setup (+6 more)

### Community 7 - "Kernel Jpaconfig"
Cohesion: 0.15
Nodes (2): JpaConfig, Kernel

### Community 8 - "Buildauto Clearmessage"
Cohesion: 0.3
Nodes (10): buildauto(), clearMessage(), getCategories(), getUniqueid(), loadCart(), loadCodes(), loadHistory(), loadProduct() (+2 more)

### Community 9 - "Load Shop"
Cohesion: 0.18
Nodes (11): Stan's Robot Shop Install (Kubernetes), Horizontal Pod Autoscaler (HPA), K8s/autoscale.sh, K8s/load-deployment.yaml, Load Config Environment Variables (HOST, NUM_CLIENTS, RUN_TIME, ERROR, SILENT), load-gen.sh, Load Generation, Kubernetes metrics-server (+3 more)

### Community 10 - "Php Healthcheckservice"
Cohesion: 0.2
Nodes (2): HealthCheckService, HealthController

### Community 11 - "Instanaheadersloggingprocessor Php"
Cohesion: 0.29
Nodes (1): InstanaHeadersLoggingProcessor

### Community 12 - "Server Calctax"
Cohesion: 0.48
Nodes (5): calcTax(), calcTotal(), getProduct(), mergeList(), saveCart()

### Community 13 - "Server Mongoconnect"
Cohesion: 0.6
Nodes (2): mongoConnect(), mongoLoop()

### Community 14 - "Retryabledatasource Java"
Cohesion: 0.47
Nodes (2): AbstractDataSource, RetryableDataSource

### Community 15 - "Eum Instana"
Cohesion: 0.33
Nodes (6): ENV: INSTANA_EUM_KEY, Instana End User Monitoring (EUM), Microservices Ecommerce Demo App, EUM Disabled Placeholder, Instana EUM Snippet Template, Splash Page (Welcome / Tech Stack)

### Community 16 - "Antennae Blue"
Cohesion: 0.33
Nodes (6): Antennae, Blue-Gray Color Palette, Branding Asset, Claw Arms, Gear Emblem, SHCE Robot Mascot

### Community 17 - "Blue Gray"
Cohesion: 0.47
Nodes (6): Blue-Gray Color Palette, Branding Asset, Gear Emblem, UHJ Robot Mascot, Single-Eye (Cyclops) Design, Wheeled Base

### Community 18 - "Graph Dense"
Cohesion: 0.4
Nodes (6): Dense Connectivity Pattern, Graph Edges (Links), Force-Directed Layout, Purple-to-Teal Gradient Background, Network Graph Visualization, Graph Nodes (Points)

### Community 19 - "Gray Branding"
Cohesion: 0.33
Nodes (6): Branding Asset, Dark Gray Color Palette, Gray Gradient Base/Shadow, Instana Icon (Square), Robot Head Logo Mark, Teal Eye Accents

### Community 20 - "Stan Branding"
Cohesion: 0.47
Nodes (6): Branding Asset, Cyan Glow Aura, Friendly Robot Character Design, STAN Robot Mascot, STAN Wordmark, White and Gray Color Palette

### Community 21 - "Database Php"
Cohesion: 0.4
Nodes (1): Database

### Community 22 - "Instanadatacenterlistener Php"
Cohesion: 0.4
Nodes (1): InstanaDataCenterListener

### Community 23 - "Automation Theme"
Cohesion: 0.4
Nodes (5): Automation Theme, Blue Color Palette, Branding Asset, Gear Icons, HPTD Robot Mascot

### Community 24 - "Status Blue"
Cohesion: 0.4
Nodes (5): Blue Color Palette, Branding Asset, Monitoring/Status Theme, Robot Mascot, Status Gauge

### Community 25 - "Blue Gray"
Cohesion: 0.4
Nodes (5): Blue/Gray Color Palette, Branding Asset, Claw Hands, Gear Emblem, RMC Robot Mascot

### Community 26 - "Stan Branding"
Cohesion: 0.5
Nodes (5): Branding Asset, Friendly Robot Character Design, Navy and Gray Color Palette, STAN Robot Mascot, STAN Wordmark

### Community 27 - "Instana Minimal"
Cohesion: 0.5
Nodes (5): Instana Logo, Minimal Flat Logo Style, Robot Mascot (Head Icon), Teal Accent Color (Eyes), INSTANA Wordmark

### Community 28 - "Instana Agent"
Cohesion: 0.5
Nodes (4): instana-agent Helm Chart (stable/instana-agent), Instana Agent Install (Kubernetes), Istio Ingress Gateway (istio-ingressgateway service), Istio Service Mesh

### Community 29 - "Automation Gears"
Cohesion: 0.83
Nodes (4): Automation Gears, Mechanical Claw Arms, EMM Robot Icon, Robotic Assistant

### Community 30 - "Blue Gray"
Cohesion: 0.5
Nodes (4): Blue-Gray Color Palette, Branding Asset, Flat Vector Icon Style, Ewooid Robot Mascot

### Community 31 - "Branding Blue"
Cohesion: 0.67
Nodes (4): AI Branding Asset, Blue Gradient Color Palette, Watson Logo Mark, Radiating Rays Motif

### Community 32 - "Auto Complete"
Cohesion: 0.67
Nodes (1): autoComplete()

### Community 33 - "Angularjs Stan"
Cohesion: 0.67
Nodes (3): AngularJS 1.6.7, Stan's Robot Shop, Index Page Shell (AngularJS)

### Community 34 - "Blue Color"
Cohesion: 0.67
Nodes (3): Blue Color Palette, Branding Asset, Aplha Robot Mascot

### Community 35 - "Chatbot Assistant"
Cohesion: 0.67
Nodes (3): Chatbot Assistant, Robot Mascot, Terminal Panel

### Community 36 - "Claw Arms"
Cohesion: 0.67
Nodes (3): Claw Arms, Gear Motif, Blue Robot Mascot

### Community 37 - "Graphify Knowledge"
Cohesion: 1.0
Nodes (2): graphify Knowledge Graph (graphify-out/), Agent Instructions

### Community 38 - "Instana Dashboards"
Cohesion: 1.0
Nodes (2): Instana Kubernetes Dashboards, Kubernetes Resource Quotas

### Community 47 - "Cart Template"
Cohesion: 1.0
Nodes (1): Cart Template

### Community 48 - "Shipping Template"
Cohesion: 1.0
Nodes (1): Shipping Template

### Community 49 - "Payment Order"
Cohesion: 1.0
Nodes (1): Payment / Order Review Template

## Ambiguous Edges - Review These
- `Notes` → `EKS on Fargate`  [AMBIGUOUS]
  Notes.txt · relation: conceptually_related_to

## Knowledge Gaps
- **88 isolated node(s):** `on_start is called when a Locust start before any task is scheduled`, `Cart Template`, `Shipping Template`, `Payment / Order Review Template`, `EUM Disabled Placeholder` (+83 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **Thin community `Calculator Java`** (22 nodes): `Calculator`, `.Calculator()`, `.getDistance()`, `City`, `.getCity()`, `.getCode()`, `.getLatitude()`, `.getLongitude()`, `.getName()`, `.getRegion()`, `.getUuid()`, `.setCity()`, `.setCode()`, `.setLatitude()`, `.setLongitude()`, `.setName()`, `.setRegion()`, `.toString()`, `Calculator.java`, `City.java`, `Calculator.java`, `City.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Kernel Jpaconfig`** (13 nodes): `.getenv()`, `Kernel.php`, `JpaConfig.java`, `JpaConfig`, `.getDataSource()`, `Kernel`, `.configureContainer()`, `.configureRoutes()`, `.corsResponseFilter()`, `.getSubscribedEvents()`, `.registerBundles()`, `Kernel.php`, `JpaConfig.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Php Healthcheckservice`** (10 nodes): `HealthCheckService`, `.checkConnectivity()`, `.__construct()`, `HealthController`, `.__construct()`, `.__invoke()`, `HealthController.php`, `HealthCheckService.php`, `HealthController.php`, `HealthCheckService.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Instanaheadersloggingprocessor Php`** (8 nodes): `InstanaHeadersLoggingProcessor.php`, `InstanaHeadersLoggingProcessor`, `.addHeaderData()`, `.getSubscribedEvents()`, `.__invoke()`, `.removeHeaderData()`, `.reset()`, `InstanaHeadersLoggingProcessor.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Server Mongoconnect`** (6 nodes): `server.js`, `server.js`, `server.js`, `mongoConnect()`, `mongoLoop()`, `server.js`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Retryabledatasource Java`** (6 nodes): `AbstractDataSource`, `RetryableDataSource.java`, `RetryableDataSource`, `.getConnection()`, `.RetryableDataSource()`, `RetryableDataSource.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Database Php`** (5 nodes): `Database`, `.__construct()`, `.getConnection()`, `Database.php`, `Database.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Instanadatacenterlistener Php`** (5 nodes): `InstanaDataCenterListener.php`, `InstanaDataCenterListener`, `.__construct()`, `.__invoke()`, `InstanaDataCenterListener.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Auto Complete`** (3 nodes): `autoComplete()`, `auto-complete.js`, `auto-complete.js`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Graphify Knowledge`** (2 nodes): `graphify Knowledge Graph (graphify-out/)`, `Agent Instructions`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Instana Dashboards`** (2 nodes): `Instana Kubernetes Dashboards`, `Kubernetes Resource Quotas`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Cart Template`** (1 nodes): `Cart Template`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Shipping Template`** (1 nodes): `Shipping Template`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Payment Order`** (1 nodes): `Payment / Order Review Template`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Notes` and `EKS on Fargate`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `Controller` connect `Java Ship` to `Carthelper Java`, `Kernel Jpaconfig`?**
  _High betweenness centrality (0.068) - this node is a cross-community bridge._
- **Why does `queueOrder()` connect `Php Catalogueservice` to `Kernel Jpaconfig`?**
  _High betweenness centrality (0.053) - this node is a cross-community bridge._
- **Are the 9 inferred relationships involving `error()` (e.g. with `exception_handler()` and `pay()`) actually correct?**
  _`error()` has 9 INFERRED edges - model-reasoned connections that need verification._
- **What connects `on_start is called when a Locust start before any task is scheduled`, `Cart Template`, `Shipping Template` to the rest of the system?**
  _88 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Php Catalogueservice` be split into smaller, more focused modules?**
  _Cohesion score 0.09 - nodes in this community are weakly interconnected._
- **Should `Value Microservice` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._