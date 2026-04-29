# Graph Report - .  (2026-04-24)

## Corpus Check
- 69 files · ~51,867 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 346 nodes · 396 edges · 40 communities detected
- Extraction: 82% EXTRACTED · 18% INFERRED · 1% AMBIGUOUS · INFERRED: 70 edges (avg confidence: 0.75)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Cart Flow|Cart Flow]]
- [[_COMMUNITY_Calculator Java City|Calculator Java City]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Jpaconfig Kernel Java|Jpaconfig Kernel Java]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Cart Flow|Cart Flow]]
- [[_COMMUNITY_Php Healthcheckservice Healthcontroller|Php Healthcheckservice Healthcontroller]]
- [[_COMMUNITY_Robot Blue Icon|Robot Blue Icon]]
- [[_COMMUNITY_RabbitMQ Integration|RabbitMQ Integration]]
- [[_COMMUNITY_Code Java Getcode|Code Java Getcode]]
- [[_COMMUNITY_Robot Antenna Arms|Robot Antenna Arms]]
- [[_COMMUNITY_Arm Left Right|Arm Left Right]]
- [[_COMMUNITY_Stan Arm Eye|Stan Arm Eye]]
- [[_COMMUNITY_Payment Flow|Payment Flow]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Cart Flow|Cart Flow]]
- [[_COMMUNITY_Cityrepository Java Cities|Cityrepository Java Cities]]
- [[_COMMUNITY_Fluentd Logging|Fluentd Logging]]
- [[_COMMUNITY_Server Mongoconnect Mongoloop|Server Mongoconnect Mongoloop]]
- [[_COMMUNITY_RabbitMQ Integration|RabbitMQ Integration]]
- [[_COMMUNITY_Retryabledatasource Java Abstractdatasource|Retryabledatasource Java Abstractdatasource]]
- [[_COMMUNITY_Antennas Eyes Gear|Antennas Eyes Gear]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Kubernetes Deploy|Kubernetes Deploy]]
- [[_COMMUNITY_Robot Asset Automation|Robot Asset Automation]]
- [[_COMMUNITY_Robot Asset Automation|Robot Asset Automation]]
- [[_COMMUNITY_Graph Clusters Communities|Graph Clusters Communities]]
- [[_COMMUNITY_Robot Automation Character|Robot Automation Character]]
- [[_COMMUNITY_Watson Png Globe|Watson Png Globe]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Auto Complete Autocomplete|Auto Complete Autocomplete]]
- [[_COMMUNITY_Mascot Robot Stan|Mascot Robot Stan]]
- [[_COMMUNITY_Kubernetes Helm|Kubernetes Helm]]
- [[_COMMUNITY_Cart Flow|Cart Flow]]
- [[_COMMUNITY_Instana Monitoring|Instana Monitoring]]
- [[_COMMUNITY_Payment Flow|Payment Flow]]
- [[_COMMUNITY_Icon Robot|Icon Robot]]
- [[_COMMUNITY_Robot Shop Stan|Robot Shop Stan]]

## God Nodes (most connected - your core abstractions)
1. `City` - 16 edges
2. `Controller` - 12 edges
3. `error()` - 11 edges
4. `Code` - 8 edges
5. `Ship` - 8 edges
6. `Robot Mascot/Icon (Blue Robot)` - 8 edges
7. `Robot Illustration` - 8 edges
8. `web/static/images/SHCE.png` - 8 edges
9. `web/static/images/STAN-1.png` - 8 edges
10. `ng-view Router Outlet` - 8 edges

## Surprising Connections (you probably didn't know these)
- `Payment Service Python Dependencies` --conceptually_related_to--> `Prometheus Metrics Endpoints (Cart + Payment)`  [INFERRED]
  payment/requirements.txt → README.md
- `Load Generation (Locust)` --cites--> `Locust Load Testing Tool`  [EXTRACTED]
  load-gen/README.md → README.md
- `OpenShift Deployment Guide (OCP 3.x / 4.x)` --conceptually_related_to--> `Kubernetes Notes (Instana Agent via Helm, Robot Shop via Helm, Quotas, Autoscale, Istio Gateway)`  [INFERRED]
  OpenShift/README.md → K8s/README.md
- `exception_handler()` --calls--> `error()`  [INFERRED]
  /mnt/c/Users/goura/Three-Tier-Application/payment/payment.py → /mnt/c/Users/goura/Three-Tier-Application/load-gen/robot-shop.py
- `pay()` --calls--> `error()`  [INFERRED]
  /mnt/c/Users/goura/Three-Tier-Application/payment/payment.py → /mnt/c/Users/goura/Three-Tier-Application/load-gen/robot-shop.py

## Hyperedges (group relationships)
- **Robot Mascot Component Group** — aplha_robot_head, aplha_robot_torso, aplha_robot_arms, aplha_robot_legs, aplha_robot_mascot [EXTRACTED 1.00]
- **Robot Character Composition** — emm_robot_head, emm_single_eye, emm_antenna, emm_torso_body, emm_gear_icons, emm_claw_arms, emm_wheeled_base, emm_ground_shadow, emm_robot_illustration [EXTRACTED 1.00]
- **Automation/Engineering Mascot Visual** — EPE_icon, EPE_robot_icon, EPE_gear_symbols, EPE_automation, EPE_engineering [INFERRED 0.75]

## Communities

### Community 0 - "Instana Monitoring"
Cohesion: 0.07
Nodes (11): CatalogueService, Database, HttpUser, InstanaDataCenterListener, RatingsApiController, RatingsService, error(), load() (+3 more)

### Community 1 - "Cart Flow"
Cohesion: 0.07
Nodes (4): CartHelper, CodeRepository, Controller, Ship

### Community 2 - "Calculator Java City"
Cohesion: 0.1
Nodes (2): Calculator, City

### Community 3 - "Instana Monitoring"
Cohesion: 0.23
Nodes (6): BeanPostProcessor, HandlerInterceptorAdapter, DataSourcePostProcessor, InstanaDatacenterTagInterceptor, ShippingServiceApplication, WebMvcConfigurer

### Community 4 - "Instana Monitoring"
Cohesion: 0.14
Nodes (14): Cart Screen, GitHub: instana/robot-shop, Instana Website, AngularJS 1.6.7 + angular-route 1.6.7, ng-view Router Outlet, Robot Shop Web UI (AngularJS App Shell), Angular Module: robotshop, Angular Controller: shopform (+6 more)

### Community 5 - "Jpaconfig Kernel Java"
Cohesion: 0.15
Nodes (2): JpaConfig, Kernel

### Community 6 - "Instana Monitoring"
Cohesion: 0.15
Nodes (13): Docker Compose Docs: env-file (.env), Docker Hub: robotshop Images, Instana Blog Post: Stan's Robot Shop Sample Microservice Application, Instana Docs: Tracing Core Concepts, Instana Trial Account, Instana Docs: Website Monitoring / EUM, Payment Service Python Dependencies, Endpoint: /api/cart/metrics (+5 more)

### Community 7 - "Cart Flow"
Cohesion: 0.3
Nodes (10): buildauto(), clearMessage(), getCategories(), getUniqueid(), loadCart(), loadCodes(), loadHistory(), loadProduct() (+2 more)

### Community 8 - "Php Healthcheckservice Healthcontroller"
Cohesion: 0.2
Nodes (2): HealthCheckService, HealthController

### Community 9 - "Robot Blue Icon"
Cohesion: 0.2
Nodes (10): Alpha (Possible Brand/Name Reference), Assistant Persona, Blue Robot Visual Design, Friendly Minimal Expression, Aplha.png (Robot Icon), Mechanical Arms, Robot Head, Spring-Like Legs (+2 more)

### Community 10 - "RabbitMQ Integration"
Cohesion: 0.58
Nodes (7): connectToRabbitMQ(), createSpan(), failOnError(), getOrderId(), main(), processSale(), rabbitConnector()

### Community 11 - "Code Java Getcode"
Cohesion: 0.22
Nodes (1): Code

### Community 12 - "Robot Antenna Arms"
Cohesion: 0.28
Nodes (9): Antenna, Claw Arms, Gear Icons, Ground Shadow, Robot Head, Robot Illustration, Single Eye, Torso Body (+1 more)

### Community 13 - "Arm Left Right"
Cohesion: 0.42
Nodes (9): Left Arm, Right Arm, Eye/Sensor, web/static/images/SHCE.png, Gear/Settings Symbol, Robot, Torso/Body, Left Wheel (+1 more)

### Community 14 - "Stan Arm Eye"
Cohesion: 0.42
Nodes (9): left_arm, right_arm, left_eye, right_eye, robot_head, STAN, STAN, robot_torso (+1 more)

### Community 15 - "Payment Flow"
Cohesion: 0.5
Nodes (6): countItems(), exception_handler(), health(), metrics(), pay(), queueOrder()

### Community 16 - "Instana Monitoring"
Cohesion: 0.29
Nodes (1): InstanaHeadersLoggingProcessor

### Community 17 - "Cart Flow"
Cohesion: 0.48
Nodes (5): calcTax(), calcTotal(), getProduct(), mergeList(), saveCart()

### Community 18 - "Cityrepository Java Cities"
Cohesion: 0.29
Nodes (1): CityRepository

### Community 19 - "Fluentd Logging"
Cohesion: 0.29
Nodes (7): ELK Stack (Elastic), Fluentd Docs: Elasticsearch Output Plugin, Humio Docs: Fluentd Shipper, Humio, Instana Docs: Logging Integration, Logging with Fluentd (Humio or ELK), Rationale: Build custom Fluentd image because default image lacks Elasticsearch output plugin

### Community 20 - "Server Mongoconnect Mongoloop"
Cohesion: 0.6
Nodes (2): mongoConnect(), mongoLoop()

### Community 21 - "RabbitMQ Integration"
Cohesion: 0.4
Nodes (1): Publisher

### Community 22 - "Retryabledatasource Java Abstractdatasource"
Cohesion: 0.47
Nodes (2): AbstractDataSource, RetryableDataSource

### Community 23 - "Antennas Eyes Gear"
Cohesion: 0.6
Nodes (6): Robot, Gear, Wrench, Antennas, Eyes, web/static/images/UHJ.png

### Community 24 - "Instana Monitoring"
Cohesion: 0.33
Nodes (5): Instana, index.html, product.html, Favicon, Rating vote icon

### Community 25 - "Kubernetes Deploy"
Cohesion: 0.33
Nodes (6): Kubernetes Docs: Resource Metrics Pipeline / metrics-server, Locust Load Testing Tool, Load Gen Env Vars: HOST, NUM_CLIENTS, RUN_TIME, ERROR, SILENT, Load Generation (Locust), Rationale: Load generation is deliberately separate from docker-compose to allow running the app without load, Python Dependency: locust

### Community 26 - "Robot Asset Automation"
Cohesion: 0.4
Nodes (5): Automation, Engineering/Mechanization, Gear Symbols (Mechanism/Settings), EPE Robot Image Asset, Robot Mascot/Icon

### Community 27 - "Robot Asset Automation"
Cohesion: 0.5
Nodes (5): Automation / System Operations Theme, Brand/Illustration Asset, Gear/Settings Symbol (on chest), Robot Character, Robot Mascot (RMC.png)

### Community 28 - "Graph Clusters Communities"
Cohesion: 0.5
Nodes (4): Clusters (communities), Edges (links), Network graph visualization, Nodes (vertices)

### Community 29 - "Robot Automation Character"
Cohesion: 0.67
Nodes (4): Automation and Configuration Concept, Gear Symbol Motif, Stylized Robot Character, Robot Icon Illustration

### Community 30 - "Watson Png Globe"
Cohesion: 0.83
Nodes (3): Watson, web/static/images/Watson.png, Watson globe mark

### Community 31 - "Instana Monitoring"
Cohesion: 0.5
Nodes (4): EUM Disabled Notice, Env Var: INSTANA_EUM_KEY, Env Var: INSTANA_EUM_REPORTING_URL, Instana EUM Include Template

### Community 32 - "Auto Complete Autocomplete"
Cohesion: 0.67
Nodes (1): autoComplete()

### Community 33 - "Mascot Robot Stan"
Cohesion: 0.67
Nodes (3): STAN (robot mascot), Robot character (mascot style), STAN (wordmark/text)

### Community 34 - "Kubernetes Helm"
Cohesion: 0.67
Nodes (3): Helm Chart: Stan's Robot Shop (Configurable Deployment), Kubernetes Notes (Instana Agent via Helm, Robot Shop via Helm, Quotas, Autoscale, Istio Gateway), OpenShift Deployment Guide (OCP 3.x / 4.x)

### Community 35 - "Cart Flow"
Cohesion: 1.0
Nodes (2): Assistant Robot, Ewooid Robot Illustration (Cartoon Robot Icon)

### Community 36 - "Instana Monitoring"
Cohesion: 1.0
Nodes (2): Instana (Brand/Product), Placeholder Image (Instana Logo)

### Community 37 - "Payment Flow"
Cohesion: 1.0
Nodes (2): Helm Setting: payment.gateway (Pseudo External Payment Provider URL), Rationale: payment.gateway simulates partial/3rd-party traces (HTTP GET to external URL)

### Community 46 - "Icon Robot"
Cohesion: 1.0
Nodes (1): Robot Icon

### Community 47 - "Robot Shop Stan"
Cohesion: 1.0
Nodes (1): Stan's Robot Shop

## Ambiguous Edges - Review These
- `Aplha.png (Robot Icon)` → `Alpha (Possible Brand/Name Reference)`  [AMBIGUOUS]
  web/static/images/Aplha.png · relation: references
- `Robot Mascot/Icon (Blue Robot)` → `Assistant Persona`  [AMBIGUOUS]
  web/static/images/Aplha.png · relation: conceptually_related_to

## Knowledge Gaps
- **70 isolated node(s):** `on_start is called when a Locust start before any task is scheduled`, `Alpha (Possible Brand/Name Reference)`, `Robot Head`, `Robot Torso`, `Mechanical Arms` (+65 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **Thin community `Calculator Java City`** (22 nodes): `Calculator`, `.Calculator()`, `.getDistance()`, `City`, `.getCity()`, `.getCode()`, `.getLatitude()`, `.getLongitude()`, `.getName()`, `.getRegion()`, `.getUuid()`, `.setCity()`, `.setCode()`, `.setLatitude()`, `.setLongitude()`, `.setName()`, `.setRegion()`, `.toString()`, `Calculator.java`, `City.java`, `Calculator.java`, `City.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Jpaconfig Kernel Java`** (13 nodes): `.getenv()`, `JpaConfig`, `.getDataSource()`, `Kernel`, `.configureContainer()`, `.configureRoutes()`, `.corsResponseFilter()`, `.getSubscribedEvents()`, `.registerBundles()`, `Kernel.php`, `JpaConfig.java`, `Kernel.php`, `JpaConfig.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Php Healthcheckservice Healthcontroller`** (10 nodes): `HealthCheckService`, `.checkConnectivity()`, `.__construct()`, `HealthController`, `.__construct()`, `.__invoke()`, `HealthController.php`, `HealthCheckService.php`, `HealthController.php`, `HealthCheckService.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Code Java Getcode`** (9 nodes): `Code`, `.getCode()`, `.getName()`, `.getUuid()`, `.setCode()`, `.setName()`, `.toString()`, `Code.java`, `Code.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Instana Monitoring`** (8 nodes): `InstanaHeadersLoggingProcessor`, `.addHeaderData()`, `.getSubscribedEvents()`, `.__invoke()`, `.removeHeaderData()`, `.reset()`, `InstanaHeadersLoggingProcessor.php`, `InstanaHeadersLoggingProcessor.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Cityrepository Java Cities`** (7 nodes): `CityRepository`, `.findByCode()`, `.findById()`, `.match()`, `.cities()`, `CityRepository.java`, `CityRepository.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Server Mongoconnect Mongoloop`** (6 nodes): `server.js`, `server.js`, `server.js`, `mongoConnect()`, `mongoLoop()`, `server.js`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `RabbitMQ Integration`** (6 nodes): `rabbitmq.py`, `rabbitmq.py`, `Publisher`, `._connect()`, `.__init__()`, `._publish()`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Retryabledatasource Java Abstractdatasource`** (6 nodes): `AbstractDataSource`, `RetryableDataSource.java`, `RetryableDataSource`, `.getConnection()`, `.RetryableDataSource()`, `RetryableDataSource.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Auto Complete Autocomplete`** (3 nodes): `autoComplete()`, `auto-complete.js`, `auto-complete.js`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Cart Flow`** (2 nodes): `Assistant Robot`, `Ewooid Robot Illustration (Cartoon Robot Icon)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Instana Monitoring`** (2 nodes): `Instana (Brand/Product)`, `Placeholder Image (Instana Logo)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Payment Flow`** (2 nodes): `Helm Setting: payment.gateway (Pseudo External Payment Provider URL)`, `Rationale: payment.gateway simulates partial/3rd-party traces (HTTP GET to external URL)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Icon Robot`** (1 nodes): `Robot Icon`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Robot Shop Stan`** (1 nodes): `Stan's Robot Shop`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Aplha.png (Robot Icon)` and `Alpha (Possible Brand/Name Reference)`?**
  _Edge tagged AMBIGUOUS (relation: references) - confidence is low._
- **What is the exact relationship between `Robot Mascot/Icon (Blue Robot)` and `Assistant Persona`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `Controller` connect `Cart Flow` to `Cityrepository Java Cities`, `Jpaconfig Kernel Java`?**
  _High betweenness centrality (0.058) - this node is a cross-community bridge._
- **Why does `queueOrder()` connect `Payment Flow` to `Jpaconfig Kernel Java`?**
  _High betweenness centrality (0.050) - this node is a cross-community bridge._
- **Why does `pay()` connect `Payment Flow` to `Instana Monitoring`?**
  _High betweenness centrality (0.046) - this node is a cross-community bridge._
- **Are the 9 inferred relationships involving `error()` (e.g. with `.get()` and `exception_handler()`) actually correct?**
  _`error()` has 9 INFERRED edges - model-reasoned connections that need verification._
- **What connects `on_start is called when a Locust start before any task is scheduled`, `Alpha (Possible Brand/Name Reference)`, `Robot Head` to the rest of the system?**
  _70 weakly-connected nodes found - possible documentation gaps or missing edges._