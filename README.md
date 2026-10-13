# Java & DevOps Portfolio – VProfile Cloud Demo

A recruiter-friendly portfolio project that demonstrates a Java backend in a cloud-native DevOps environment. It combines a Spring-based application, containerization, Kubernetes deployment, and infrastructure automation to reflect a Java + DevOps role profile.

## Overview
This project showcases a full-stack cloud engineering workflow across:
- Java backend development with Spring MVC / Spring Security / JPA
- Microservice-oriented application structure and deployment patterns
- Docker-based packaging and runtime configuration
- Kubernetes deployment using Helm
- Terraform provisioning for AWS/EKS infrastructure
- CI/CD-oriented repository structure for real-world delivery

## Project Structure
- `vprofile-app/` – Java application with backend logic, configuration, and deployment packaging
- `vprofile-infra/` – Terraform code for AWS and EKS setup
- `vprofile-helm/` – Helm chart for Kubernetes deployment
- `.gitignore` – excludes build output, Terraform state, and secret material

## Technologies Used
- Java 17+
- Spring MVC / Spring Security / JPA
- Maven
- Docker
- Kubernetes
- Helm
- AWS / EKS
- Terraform
- GitHub-based workflow automation

## What This Shows
- Java backend development in a production-style environment
- Containerization and deployment automation
- Kubernetes-based orchestration and application packaging
- Infrastructure as Code for cloud environments
- DevOps practices relevant to Java engineering roles

## Why This Is Relevant for Java + DevOps Roles
This repository is designed to highlight experience with:
- building and packaging Java applications
- working with infrastructure automation and cloud services
- deploying applications in Kubernetes environments
- managing configuration and environment separation
- collaborating in Git-based DevOps workflows

## Important Notes
This repository is intentionally sanitized for public sharing and does not contain production credentials, secrets, private keys, AWS access keys, or environment-specific values.

For real deployments, secrets should be provided through:
- GitHub Actions Secrets
- Kubernetes Secrets
- AWS Secrets Manager or SSM Parameter Store
- Environment variables managed outside the repository

## Local Setup
1. Open the relevant project folder.
2. Review the Java app configuration and deployment manifests.
3. Adapt the infrastructure and chart values to your own environment.
4. Inject secrets externally rather than committing them to Git.

## Security
This repo is created for public portfolio use and intentionally excludes:
- AWS access keys
- database passwords
- SSH keys
- Terraform state files
- `.env` files

## Future Enhancements
- Add GitHub Actions CI/CD workflows
- Add automated tests and deployment checks
- Add monitoring, logging, and observability
- Extend with additional microservice patterns and Kubernetes best practices
