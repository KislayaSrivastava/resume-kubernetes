**Cloud Resume on EKS**
(Kubernetes + AWS)

```markdown
# 📄 Cloud Resume Challenge (AWS EKS)

This project implements the **Cloud Resume Challenge**, hosted via **Amazon EKS (Kubernetes)**.  
It demonstrates how to host a personal resume site using modern cloud-native practices.  

---

## ✨ Features
- Static resume site deployed on **Kubernetes**
- Hosted on **AWS EKS cluster**
- CI/CD pipeline for automated deployments
- Scalable & containerized design

---

## 🛠️ Tech Stack
- AWS EKS (Kubernetes)
- Docker
- Terraform (for infra provisioning)
- GitHub Actions (CI/CD)
- HTML/CSS/JS for the frontend

---

## ⚙️ Setup
1. Clone repository
2. Build Docker image
   ```bash
   docker build -t resume-app .
   ```
3. Push to container registry (ECR/DockerHub)
4. Apply Kubernetes manifests
   ```bash 
   kubectl apply -f k8s/
   ```
## Key Learnings
1. Hosting static sites on Kubernetes
2. Using AWS EKS with Terraform
3. Automating deployments with CI/CD
