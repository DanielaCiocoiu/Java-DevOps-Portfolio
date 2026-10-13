# GitOps Portfolio – VProfile Demo

A clean, recruiter-friendly GitOps and cloud deployment portfolio showcasing a Java web application (`vprofile-app`), Terraform infrastructure (`vprofile-infra`), and Helm deployment manifests (`vprofile-helm`).

## Overview
This project demonstrates a full DevOps workflow across:
- Java web application packaging and deployment
- Terraform-based AWS EKS infrastructure provisioning
- Helm-based Kubernetes application deployment
- CI/CD readiness with secrets managed outside the repository

## Project Structure
- `vprofile-app/` – Java Spring MVC application
- `vprofile-infra/` – Terraform code for AWS/EKS foundation
- `vprofile-helm/` – Helm chart for Kubernetes deployment
- `.gitignore` – excludes build output, Terraform state, and secret material

## Technologies Used
- Java 17+
- Spring MVC / Spring Security / JPA
- Maven
- Docker
- EKS / AWS
- Terraform
- Helm
- Kubernetes

## What This Shows
- Infrastructure as Code with Terraform
- Containerized application deployment
- Kubernetes packaging with Helm
- GitOps-oriented repo structure for demos and interviews

## Important Notes
This repository is intentionally sanitized for public sharing and does not contain any production credentials, secrets, private keys, AWS access keys, or environment-specific values.

Before deploying in a real environment, configure secrets via:
- GitHub Actions Secrets
- Kubernetes Secrets
- AWS Secrets Manager / SSM Parameter Store
- Environment variables or a secret manager of your choice

## Local Setup
1. Open the relevant project folder.
2. Follow the application/infrastructure instructions inside each project.
3. For real deployments, inject secrets externally instead of committing them to Git.

## Security
This repo is designed for public visibility and portfolio use. It intentionally avoids storing:
- AWS access keys
- database passwords
- private SSH keys
- Terraform state files
- `.env` files

## Future Enhancements
- Add GitHub Actions CI/CD workflow
- Add monitoring and observability
- Add Kubernetes ingress and TLS configuration
- Add automated deployment validation and smoke tests
