# Install EKS

Please follow the prerequisites doc before this.

## Install using Fargate

```
eksctl create cluster --name roboshop --region ap-south-1 --node-type m7i-flex.large --nodes 2
```

## Delete the cluster

```
eksctl delete cluster --name roboshop --region ap-south-1
```



