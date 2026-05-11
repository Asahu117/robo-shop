# Graph Report - kubernetes-microservices-platform  (2026-05-11)

## Corpus Check
- 32 files · ~52,948 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 289 nodes · 301 edges · 36 communities detected
- Extraction: 78% EXTRACTED · 21% INFERRED · 1% AMBIGUOUS · INFERRED: 63 edges (avg confidence: 0.76)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 0|Community 0]]
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 2|Community 2]]
- [[_COMMUNITY_Community 3|Community 3]]
- [[_COMMUNITY_Community 4|Community 4]]
- [[_COMMUNITY_Community 5|Community 5]]
- [[_COMMUNITY_Community 6|Community 6]]
- [[_COMMUNITY_Community 8|Community 8]]
- [[_COMMUNITY_Community 9|Community 9]]
- [[_COMMUNITY_Community 10|Community 10]]
- [[_COMMUNITY_Community 11|Community 11]]
- [[_COMMUNITY_Community 12|Community 12]]
- [[_COMMUNITY_Community 13|Community 13]]
- [[_COMMUNITY_Community 14|Community 14]]
- [[_COMMUNITY_Community 16|Community 16]]
- [[_COMMUNITY_Community 17|Community 17]]
- [[_COMMUNITY_Community 18|Community 18]]
- [[_COMMUNITY_Community 19|Community 19]]
- [[_COMMUNITY_Community 20|Community 20]]
- [[_COMMUNITY_Community 21|Community 21]]
- [[_COMMUNITY_Community 22|Community 22]]
- [[_COMMUNITY_Community 23|Community 23]]
- [[_COMMUNITY_Community 24|Community 24]]
- [[_COMMUNITY_Community 25|Community 25]]
- [[_COMMUNITY_Community 26|Community 26]]
- [[_COMMUNITY_Community 27|Community 27]]
- [[_COMMUNITY_Community 28|Community 28]]
- [[_COMMUNITY_Community 30|Community 30]]
- [[_COMMUNITY_Community 31|Community 31]]
- [[_COMMUNITY_Community 32|Community 32]]
- [[_COMMUNITY_Community 37|Community 37]]
- [[_COMMUNITY_Community 38|Community 38]]
- [[_COMMUNITY_Community 39|Community 39]]
- [[_COMMUNITY_Community 40|Community 40]]
- [[_COMMUNITY_Community 41|Community 41]]
- [[_COMMUNITY_Community 42|Community 42]]

## God Nodes (most connected - your core abstractions)
1. `City` - 15 edges
2. `Controller` - 11 edges
3. `error()` - 10 edges
4. `Robot Mascot/Icon (Blue Robot)` - 8 edges
5. `Robot Illustration` - 8 edges
6. `web/static/images/SHCE.png` - 8 edges
7. `web/static/images/STAN-1.png` - 8 edges
8. `Stan's Robot Shop (Sample Microservice Application)` - 8 edges
9. `Ship` - 7 edges
10. `Code` - 7 edges

## Surprising Connections (you probably didn't know these)
- `error()` --calls--> `exception_handler()`  [INFERRED]
  load-gen/robot-shop.py → payment/payment.py
- `error()` --calls--> `pay()`  [INFERRED]
  load-gen/robot-shop.py → payment/payment.py
- `Kubernetes Notes (Instana Agent via Helm, Robot Shop via Helm, Quotas, Autoscale, Istio Gateway)` --conceptually_related_to--> `OpenShift Deployment Guide (OCP 3.x / 4.x)`  [INFERRED]
  K8s/README.md → OpenShift/README.md
- `Load Generation (Locust)` --cites--> `Locust Load Testing Tool`  [EXTRACTED]
  load-gen/README.md → README.md
- `Logging with Fluentd (Humio or ELK)` --cites--> `Fluentd Docs: Elasticsearch Output Plugin`  [EXTRACTED]
  fluentd/README.md → fluentd/Docker-Compose/README.md

## Hyperedges (group relationships)
- **Robot Mascot Component Group** — aplha_robot_head, aplha_robot_torso, aplha_robot_arms, aplha_robot_legs, aplha_robot_mascot [EXTRACTED 1.00]
- **Robot Character Composition** — emm_robot_head, emm_single_eye, emm_antenna, emm_torso_body, emm_gear_icons, emm_claw_arms, emm_wheeled_base, emm_ground_shadow, emm_robot_illustration [EXTRACTED 1.00]
- **Automation/Engineering Mascot Visual** — EPE_icon, EPE_robot_icon, EPE_gear_symbols, EPE_automation, EPE_engineering [INFERRED 0.75]

## Communities

### Community 0 - "Community 0"
Cohesion: 0.09
Nodes (10): CatalogueService, Database, InstanaDataCenterListener, countItems(), exception_handler(), pay(), RatingsApiController, RatingsService (+2 more)

### Community 1 - "Community 1"
Cohesion: 0.08
Nodes (4): CityRepository, CodeRepository, Controller, Ship

### Community 2 - "Community 2"
Cohesion: 0.11
Nodes (2): Calculator, City

### Community 3 - "Community 3"
Cohesion: 0.11
Nodes (3): CartHelper, Code, Publisher

### Community 4 - "Community 4"
Cohesion: 0.19
Nodes (6): BeanPostProcessor, HandlerInterceptorAdapter, DataSourcePostProcessor, InstanaDatacenterTagInterceptor, ShippingServiceApplication, WebMvcConfigurer

### Community 5 - "Community 5"
Cohesion: 0.17
Nodes (3): JpaConfig, Kernel, queueOrder()

### Community 6 - "Community 6"
Cohesion: 0.17
Nodes (12): Docker Compose Docs: env-file (.env), Docker Hub: robotshop Images, Instana Blog Post: Stan's Robot Shop Sample Microservice Application, Instana Docs: Tracing Core Concepts, Instana Trial Account, Instana Docs: Website Monitoring / EUM, Endpoint: /api/cart/metrics, Endpoint: /api/payment/metrics (+4 more)

### Community 8 - "Community 8"
Cohesion: 0.2
Nodes (10): Alpha (Possible Brand/Name Reference), Assistant Persona, Blue Robot Visual Design, Friendly Minimal Expression, Aplha.png (Robot Icon), Mechanical Arms, Robot Head, Spring-Like Legs (+2 more)

### Community 9 - "Community 9"
Cohesion: 0.28
Nodes (9): Antenna, Claw Arms, Gear Icons, Ground Shadow, Robot Head, Robot Illustration, Single Eye, Torso Body (+1 more)

### Community 10 - "Community 10"
Cohesion: 0.42
Nodes (9): Left Arm, Right Arm, Eye/Sensor, web/static/images/SHCE.png, Gear/Settings Symbol, Robot, Torso/Body, Left Wheel (+1 more)

### Community 11 - "Community 11"
Cohesion: 0.42
Nodes (9): left_arm, right_arm, left_eye, right_eye, robot_head, STAN, STAN, robot_torso (+1 more)

### Community 12 - "Community 12"
Cohesion: 0.25
Nodes (2): HealthCheckService, HealthController

### Community 13 - "Community 13"
Cohesion: 0.33
Nodes (1): InstanaHeadersLoggingProcessor

### Community 14 - "Community 14"
Cohesion: 0.29
Nodes (7): ELK Stack (Elastic), Fluentd Docs: Elasticsearch Output Plugin, Humio Docs: Fluentd Shipper, Humio, Instana Docs: Logging Integration, Logging with Fluentd (Humio or ELK), Rationale: Build custom Fluentd image because default image lacks Elasticsearch output plugin

### Community 16 - "Community 16"
Cohesion: 0.6
Nodes (6): Robot, Gear, Wrench, Antennas, Eyes, web/static/images/UHJ.png

### Community 17 - "Community 17"
Cohesion: 0.33
Nodes (5): Instana, index.html, product.html, Favicon, Rating vote icon

### Community 18 - "Community 18"
Cohesion: 0.5
Nodes (2): AbstractDataSource, RetryableDataSource

### Community 19 - "Community 19"
Cohesion: 0.4
Nodes (5): Automation, Engineering/Mechanization, Gear Symbols (Mechanism/Settings), EPE Robot Image Asset, Robot Mascot/Icon

### Community 20 - "Community 20"
Cohesion: 0.5
Nodes (5): Automation / System Operations Theme, Brand/Illustration Asset, Gear/Settings Symbol (on chest), Robot Character, Robot Mascot (RMC.png)

### Community 21 - "Community 21"
Cohesion: 0.5
Nodes (4): Clusters (communities), Edges (links), Network graph visualization, Nodes (vertices)

### Community 22 - "Community 22"
Cohesion: 0.4
Nodes (5): Kubernetes Docs: Resource Metrics Pipeline / metrics-server, Locust Load Testing Tool, Load Gen Env Vars: HOST, NUM_CLIENTS, RUN_TIME, ERROR, SILENT, Load Generation (Locust), Rationale: Load generation is deliberately separate from docker-compose to allow running the app without load

### Community 23 - "Community 23"
Cohesion: 0.83
Nodes (2): mongoConnect(), mongoLoop()

### Community 24 - "Community 24"
Cohesion: 0.5
Nodes (3): HttpUser, on_start is called when a Locust start before any task is scheduled, UserBehavior

### Community 25 - "Community 25"
Cohesion: 0.67
Nodes (4): Automation and Configuration Concept, Gear Symbol Motif, Stylized Robot Character, Robot Icon Illustration

### Community 26 - "Community 26"
Cohesion: 0.83
Nodes (3): Watson, web/static/images/Watson.png, Watson globe mark

### Community 27 - "Community 27"
Cohesion: 0.67
Nodes (3): STAN (robot mascot), Robot character (mascot style), STAN (wordmark/text)

### Community 28 - "Community 28"
Cohesion: 0.67
Nodes (3): Helm Chart: Stan's Robot Shop (Configurable Deployment), Kubernetes Notes (Instana Agent via Helm, Robot Shop via Helm, Quotas, Autoscale, Istio Gateway), OpenShift Deployment Guide (OCP 3.x / 4.x)

### Community 30 - "Community 30"
Cohesion: 1.0
Nodes (2): Assistant Robot, Ewooid Robot Illustration (Cartoon Robot Icon)

### Community 31 - "Community 31"
Cohesion: 1.0
Nodes (2): Instana (Brand/Product), Placeholder Image (Instana Logo)

### Community 32 - "Community 32"
Cohesion: 1.0
Nodes (2): Helm Setting: payment.gateway (Pseudo External Payment Provider URL), Rationale: payment.gateway simulates partial/3rd-party traces (HTTP GET to external URL)

### Community 37 - "Community 37"
Cohesion: 1.0
Nodes (1): Robot Icon

### Community 38 - "Community 38"
Cohesion: 1.0
Nodes (1): Stan's Robot Shop

### Community 39 - "Community 39"
Cohesion: 1.0
Nodes (1): Env Var: INSTANA_EUM_KEY

### Community 40 - "Community 40"
Cohesion: 1.0
Nodes (1): Env Var: INSTANA_EUM_REPORTING_URL

### Community 41 - "Community 41"
Cohesion: 1.0
Nodes (1): Instana Website

### Community 42 - "Community 42"
Cohesion: 1.0
Nodes (1): GitHub: instana/robot-shop

## Ambiguous Edges - Review These
- `Aplha.png (Robot Icon)` → `Alpha (Possible Brand/Name Reference)`  [AMBIGUOUS]
  web/static/images/Aplha.png · relation: references
- `Robot Mascot/Icon (Blue Robot)` → `Assistant Persona`  [AMBIGUOUS]
  web/static/images/Aplha.png · relation: conceptually_related_to

## Knowledge Gaps
- **59 isolated node(s):** `on_start is called when a Locust start before any task is scheduled`, `Alpha (Possible Brand/Name Reference)`, `Robot Head`, `Robot Torso`, `Mechanical Arms` (+54 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **Thin community `Community 2`** (20 nodes): `Calculator`, `.Calculator()`, `.getDistance()`, `City`, `.getCity()`, `.getCode()`, `.getLatitude()`, `.getLongitude()`, `.getName()`, `.getRegion()`, `.getUuid()`, `.setCity()`, `.setCode()`, `.setLatitude()`, `.setLongitude()`, `.setName()`, `.setRegion()`, `.toString()`, `Calculator.java`, `City.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 12`** (8 nodes): `HealthCheckService`, `.checkConnectivity()`, `.__construct()`, `HealthController`, `.__construct()`, `.__invoke()`, `HealthController.php`, `HealthCheckService.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 13`** (7 nodes): `InstanaHeadersLoggingProcessor`, `.addHeaderData()`, `.getSubscribedEvents()`, `.__invoke()`, `.removeHeaderData()`, `.reset()`, `InstanaHeadersLoggingProcessor.php`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 18`** (5 nodes): `AbstractDataSource`, `RetryableDataSource`, `.getConnection()`, `.RetryableDataSource()`, `RetryableDataSource.java`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 23`** (4 nodes): `server.js`, `mongoConnect()`, `mongoLoop()`, `server.js`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 30`** (2 nodes): `Assistant Robot`, `Ewooid Robot Illustration (Cartoon Robot Icon)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 31`** (2 nodes): `Instana (Brand/Product)`, `Placeholder Image (Instana Logo)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 32`** (2 nodes): `Helm Setting: payment.gateway (Pseudo External Payment Provider URL)`, `Rationale: payment.gateway simulates partial/3rd-party traces (HTTP GET to external URL)`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 37`** (1 nodes): `Robot Icon`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 38`** (1 nodes): `Stan's Robot Shop`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 39`** (1 nodes): `Env Var: INSTANA_EUM_KEY`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 40`** (1 nodes): `Env Var: INSTANA_EUM_REPORTING_URL`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 41`** (1 nodes): `Instana Website`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.
- **Thin community `Community 42`** (1 nodes): `GitHub: instana/robot-shop`
  Too small to be a meaningful cluster - may be noise or needs more connections extracted.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Aplha.png (Robot Icon)` and `Alpha (Possible Brand/Name Reference)`?**
  _Edge tagged AMBIGUOUS (relation: references) - confidence is low._
- **What is the exact relationship between `Robot Mascot/Icon (Blue Robot)` and `Assistant Persona`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `Controller` connect `Community 1` to `Community 3`, `Community 5`?**
  _High betweenness centrality (0.075) - this node is a cross-community bridge._
- **Why does `queueOrder()` connect `Community 5` to `Community 0`?**
  _High betweenness centrality (0.061) - this node is a cross-community bridge._
- **Why does `pay()` connect `Community 0` to `Community 5`?**
  _High betweenness centrality (0.056) - this node is a cross-community bridge._
- **Are the 9 inferred relationships involving `error()` (e.g. with `exception_handler()` and `pay()`) actually correct?**
  _`error()` has 9 INFERRED edges - model-reasoned connections that need verification._
- **What connects `on_start is called when a Locust start before any task is scheduled`, `Alpha (Possible Brand/Name Reference)`, `Robot Head` to the rest of the system?**
  _59 weakly-connected nodes found - possible documentation gaps or missing edges._