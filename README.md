
# Containerised Threat Modelling Tool on AWS ECS Fargate

This repository deploys a **containerised Threat Composer** application on **AWS ECS Fargate** using **Terraform** for Infrastructure as Code and **GitHub Actions** for CI/CD automation. The goal is to reproduce a real-world production CI/CD workflow where infrastructure and application are fully automated — from Docker build and image push to infrastructure provisioning and secure HTTPS routing.

---

Key highlights:
- Fully automated provisioning with Terraform (remote state in S3 + DynamoDB locking)
- Container images built and pushed to Amazon ECR
- ECS Fargate service fronted by an Application Load Balancer (ALB) with HTTPS using ACM certificates validated via Route 53
- GitHub Actions pipelines for Docker image build/push, `terraform plan`, `terraform apply`, and `terraform destroy`



## 🏗 Architecture Diagram

![Architecture Diagram](images/architecture.png)

This architecture shows the full end-to-end deployment of the containerised Threat Composer application on AWS. The application is packaged into a Docker container, pushed to Amazon ECR, and deployed to an ECS Fargate service. Incoming traffic is routed securely through an Application Load Balancer (ALB) using HTTPS with an SSL certificate issued by AWS Certificate Manager (ACM) and validated via Route 53.

All infrastructure components are provisioned using Terraform with remote state stored in S3 and state locking. CI/CD automation is handled through GitHub Actions.


## 🎥 Application Demo

![Application Demo](demo.gif)

This GIF demonstrates the live deployment of the Threat Composer application running on AWS ECS Fargate, accessed securely through the Application Load Balancer over HTTPS. It showcases the successful end-to-end flow from infrastructure provisioning to application availability.







