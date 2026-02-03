# AWS Secure EKS Platform

This project demonstrates how **Fortune 100 and large enterprise organizations**
design and operate a **secure, scalable AWS Kubernetes (EKS) platform**
using Infrastructure as Code, CI/CD automation, security guardrails,
observability, and cost controls.

This is a **platform engineering project**, not a tool demo.

---

## What this project demonstrates

- Enterprise-grade AWS infrastructure built using **Terraform (IaC)**
- Secure **Kubernetes platform on Amazon EKS**
- **CI/CD pipelines using GitHub Actions**
- IAM and security guardrails aligned with least-privilege principles
- Cost optimization strategies used in large organizations
- Monitoring and observability using Prometheus and Grafana
- Operational readiness through runbooks and incident workflows

---

## Why this project exists

Most DevOps projects show individual tools.

This project shows how **real enterprise platform teams**:
- Own production infrastructure
- Enforce delivery standards
- Reduce deployment risk
- Control cloud costs
- Meet security and compliance requirements
- Enable teams to deploy safely and frequently

This mirrors how Fortune 100 companies build internal
DevOps and platform engineering systems.

---

## High-level architecture

The platform is designed using layered architecture:

- **Networking Layer**
  - AWS VPC with public and private subnets
  - Secure routing and isolation

- **Compute & Orchestration Layer**
  - Amazon EKS with managed node groups
  - Kubernetes namespaces per environment

- **Infrastructure as Code Layer**
  - Terraform modules for repeatable and auditable provisioning

- **CI/CD Layer**
  - GitHub Actions pipelines for build, test, security scan, and deployment

- **Observability Layer**
  - Centralized metrics, dashboards, and logging

---

## Repository structure

aws-secure-eks-platform/
├── README.md
├── architecture/ # Architecture diagrams and design decisions
├── terraform/ # Terraform modules and environment definitions
├── kubernetes/ # Helm charts and Kubernetes manifests
├── ci-cd/ # GitHub Actions workflows
├── observability/ # Monitoring and logging setup
├── security/ # IAM and security guardrails
├── scripts/ # Automation scripts
└── docs/ # Runbooks and operational docs


---

## Security approach

Security is treated as a first-class concern:
- Least-privilege IAM roles and policies
- Secure defaults for networking and access
- Automated security scanning in CI/CD pipelines
- Clear separation of environments (dev / prod)

---

## Cost optimization approach

Cost control is built into the platform:
- Resource right-sizing
- Storage lifecycle policies
- Autoscaling for compute resources
- Avoidance of idle infrastructure

---

## Intended audience

- Recruiters and hiring managers
- Platform and DevOps engineers
- Cloud engineers working in regulated environments

---

## Disclaimer

This project is for demonstration and learning purposes.
It reflects real-world enterprise patterns without exposing
any proprietary or sensitive configurations.

