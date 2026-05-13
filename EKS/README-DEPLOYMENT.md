# RoboShop EKS Deployment Guide

This document explains how to deploy the RoboShop microservices application on Amazon EKS using Helm and AWS ALB Ingress Controller.

---

# Architecture

GitHub Actions
→ Docker Images
→ Container Registry
→ Helm
→ Amazon EKS
→ AWS Load Balancer Controller
→ ALB Ingress
→ Microservices

---

# Prerequisites

Install:

- AWS CLI
- kubectl
- eksctl
- helm
- docker

---

# Configure AWS

```bash
aws configure
```

Verify:

```bash
aws sts get-caller-identity
```

---

# Create EKS Cluster

```bash
eksctl create cluster \
  --name roboshop \
  --region ap-south-1 \
  --nodegroup-name roboshop-ng \
  --node-type c7i-flex.large \
  --nodes 1 \
  --managed
```

Verify:

```bash
kubectl get nodes
```

---

# Create Namespace

```bash
kubectl create namespace roboshop
```

---

# Install Metrics Server

```bash
kubectl apply -f \
https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
```

Verify:

```bash
kubectl get pods -n kube-system
```

---

# Associate OIDC Provider

```bash
eksctl utils associate-iam-oidc-provider \
  --region ap-south-1 \
  --cluster roboshop \
  --approve
```

---

# Install AWS Load Balancer Controller

## Download IAM Policy

```bash
curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/main/docs/install/iam_policy.json
```

---

## Create IAM Policy

```bash
aws iam create-policy \
  --policy-name AWSLoadBalancerControllerIAMPolicy \
  --policy-document file://iam_policy.json
```

If policy already exists, continue.

---

## Get AWS Account ID

```bash
aws sts get-caller-identity
```

Copy Account ID.

---

## Create IAM Service Account

Replace ACCOUNT_ID below.

```bash
eksctl create iamserviceaccount \
  --cluster=roboshop \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole \
  --attach-policy-arn=arn:aws:iam::ACCOUNT_ID:policy/AWSLoadBalancerControllerIAMPolicy \
  --approve \
  --region ap-south-1
```

---

## Install Controller Using Helm

```bash
helm repo add eks https://aws.github.io/eks-charts
helm repo update
```

Install:

```bash
helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=roboshop \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=ap-south-1 \
  --set vpcId=$(aws eks describe-cluster --name roboshop --region ap-south-1 --query "cluster.resourcesVpcConfig.vpcId" --output text)
```

Verify:

```bash
kubectl get pods -n kube-system
```

Expected:

```text
aws-load-balancer-controller Running
```

---

# Deploy RoboShop Using Helm

Go to Helm directory:

```bash
cd EKS/helm
```

Verify chart:

```bash
helm lint
```

Render templates:

```bash
helm template roboshop .
```

Install:

```bash
helm install roboshop . -n roboshop
```

Upgrade later:

```bash
helm upgrade roboshop . -n roboshop
```

---

# Important Ingress Configuration

File:

```text
templates/ingress.yaml
```

Required annotations:

```yaml
annotations:
  alb.ingress.kubernetes.io/scheme: internet-facing
  alb.ingress.kubernetes.io/target-type: ip
  alb.ingress.kubernetes.io/healthcheck-path: /
  alb.ingress.kubernetes.io/success-codes: "200"
```

Ingress class:

```yaml
ingressClassName: alb
```

---

# Verify Deployment

Pods:

```bash
kubectl get pods -n roboshop
```

Services:

```bash
kubectl get svc -n roboshop
```

Ingress:

```bash
kubectl get ingress -n roboshop
```

Expected:

```text
ADDRESS = k8s-roboshop-xxxx.elb.amazonaws.com
```

---

# Access Application

Open:

```text
http://<ALB-DNS>
```

---

# Useful Debug Commands

Watch pods:

```bash
kubectl get pods -n roboshop -w
```

Describe pod:

```bash
kubectl describe pod <pod-name> -n roboshop
```

View logs:

```bash
kubectl logs -f <pod-name> -n roboshop
```

Describe ingress:

```bash
kubectl describe ingress roboshop -n roboshop
```

---

# Known Issue

Redis currently stays Pending because persistent storage is not configured.

This will later require:

- EBS CSI Driver
- StorageClass
- PVC provisioning

Current deployment works without Redis persistence for testing.

---

# Delete Cluster

IMPORTANT: Delete cluster after testing to avoid AWS billing.

```bash
eksctl delete cluster --name roboshop --region ap-south-1
```

---

# Deployment Validation Checklist

- EKS Cluster Running
- Nodes Ready
- Helm Chart Installed
- ALB Controller Running
- ALB DNS Created
- Frontend Accessible
- Backend APIs Working
- MongoDB Connected
- MySQL Connected
- RabbitMQ Connected

---
