# 📄 Cloud Resume Challenge (AWS EKS)

This project implements the **Cloud Resume Challenge**, hosted via **Amazon EKS (Kubernetes)**. It demonstrates how to host a personal resume site using modern cloud-native practices.

## ✨ Features

- **Static resume site deployed on Kubernetes** - Modern containerized web hosting
- **Hosted on AWS EKS cluster** - Managed Kubernetes service for scalability
- **CI/CD pipeline for automated deployments** - Streamlined development workflow
- **Scalable & containerized design** - Cloud-native architecture principles

## 🛠️ Tech Stack

| Component | Technology |
|-----------|------------|
| **Container Orchestration** | AWS EKS (Kubernetes) |
| **Containerization** | Docker |
| **Infrastructure as Code** | Terraform |
| **CI/CD Pipeline** | GitHub Actions |
| **Frontend** | HTML/CSS/JavaScript |

## ⚙️ Setup Instructions

### Prerequisites
- AWS CLI configured
- kubectl installed
- Docker installed
- Terraform installed

### Deployment Steps

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd cloud-resume-eks
   ```

2. **Build the Docker image**
   ```bash
   docker build -t resume-app .
   ```

3. **Push to container registry**
   ```bash
   # For Amazon ECR
   aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account>.dkr.ecr.<region>.amazonaws.com
   docker tag resume-app:latest <account>.dkr.ecr.<region>.amazonaws.com/resume-app:latest
   docker push <account>.dkr.ecr.<region>.amazonaws.com/resume-app:latest
   ```

4. **Deploy to Kubernetes**
   ```bash
   kubectl apply -f k8s/
   ```

5. **Verify deployment**
   ```bash
   kubectl get pods
   kubectl get services
   ```

## 🎯 Key Learnings

### Technical Skills Developed
- **Kubernetes Operations** - Understanding pod management, services, and deployments
- **AWS EKS Management** - Working with managed Kubernetes clusters
- **Infrastructure as Code** - Provisioning cloud resources with Terraform
- **Container Orchestration** - Deploying and scaling containerized applications
- **CI/CD Implementation** - Automating build and deployment processes

### Cloud-Native Best Practices
- Containerization strategies
- Kubernetes resource management
- Infrastructure automation
- GitOps workflows

## 📊 Architecture Overview

```
GitHub Repository
       ↓
GitHub Actions (CI/CD)
       ↓
Container Registry (ECR)
       ↓
AWS EKS Cluster
       ↓
Kubernetes Pods
       ↓
Load Balancer/Ingress
       ↓
Public Internet
```

## 🚀 Next Steps

- Implement monitoring with Prometheus/Grafana
- Add HTTPS/TLS certificates
- Set up auto-scaling policies
- Integrate with AWS CloudWatch
- Implement blue-green deployments
