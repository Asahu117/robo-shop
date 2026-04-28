# 🚀 Cloud-Native Microservices Platform on Kubernetes (EKS)

## 📌 Overview
This project demonstrates the deployment of a cloud-native microservices-based 3-tier application on Kubernetes (AWS EKS). It showcases end-to-end DevOps practices including containerization, orchestration, service networking, and monitoring.

The system simulates a real-world scalable application composed of multiple loosely coupled services communicating via APIs and messaging systems.

---

## 🏗️ Architecture

The application follows a 3-tier architecture:

### 🔹 Frontend Layer
- Handles user interaction
- Communicates with backend services

### 🔹 Backend Layer
- Multiple microservices handling business logic
- Services communicate via REST APIs and message queues

### 🔹 Data Layer
- Persistent storage using databases and caching systems

---

## ⚙️ Tech Stack

### ☁️ Cloud Platform
- Amazon Web Services (AWS)
- Elastic Kubernetes Service (EKS)

### 🐳 Containerization
- Docker

### ☸️ Orchestration
- Kubernetes

### 📦 Deployment
- Kubernetes YAML manifests
- Ingress Controller

### 📊 Monitoring & Observability
- Prometheus
- Grafana

### 🔧 Supporting Services
- Nginx (Reverse Proxy)
- RabbitMQ (Message Broker)
- Redis (Caching)

---

## 🚀 Key Features

- Deployed 8+ microservices using Kubernetes
- Containerized application using Docker
- Implemented service discovery using Kubernetes networking
- Configured Ingress for external access
- Integrated monitoring using Prometheus and Grafana
- Designed scalable and resilient architecture

---

## 📁 Project Structure

kubernetes-microservices-platform/
│
├── kubernetes/          # Kubernetes manifests
├── docker/              # Dockerfiles
├── monitoring/          # Prometheus & Grafana configs
├── screenshots/         # Project screenshots
└── README.md

---

## ⚡ DevOps Workflow

1. Application services are containerized using Docker  
2. Containers are deployed on Kubernetes (EKS)  
3. Kubernetes manages pod lifecycle, scaling, and networking  
4. Ingress routes external traffic to services  
5. Prometheus collects metrics from services  
6. Grafana visualizes system performance  

---

## 🛠️ Deployment Steps

### 1. Clone Repository
git clone https://github.com/asahu117/kubernetes-microservices-platform.git  
cd kubernetes-microservices-platform  

### 2. Deploy Application
kubectl apply -f kubernetes/  

### 3. Verify Deployment
kubectl get pods  
kubectl get svc  
kubectl get ingress  

---

## 🌐 Access Application

- Access using LoadBalancer or Ingress endpoint  
- Open the application in a browser  

---

## 📊 Monitoring & Observability

- Prometheus collects application and system metrics  
- Grafana dashboards provide:
  - Resource utilization  
  - Service performance  
  - System insights  

---

<!-- ## 📸 Screenshots

Add screenshots in the /screenshots folder:

- Kubernetes Pods  
- Services  
- Ingress  
- Grafana Dashboard   -->

---

## 🎯 Key Learnings

- Kubernetes deployment and networking  
- Microservices architecture  
- Monitoring and observability  
- Real-world DevOps workflow  

---

## 📈 Impact

- Managed multi-service deployment (8+ services)  
- Reduced manual setup through containerization  
- Improved system visibility using monitoring tools  

---

