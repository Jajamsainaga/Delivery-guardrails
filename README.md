# Delivery Guardrails

Policy-driven CI/CD guardrails for Kubernetes and Terraform using GitHub Actions, OPA/Conftest, Trivy, Gitleaks, Helm, and a local Kind deployment workflow.

This repo is built to be **demo-ready**: one command to deploy locally, and a CI pipeline that **fails fast** on risky changes.

---

## What this does

### Guardrails enforced
- **Secrets scanning**: blocks committed secrets (Gitleaks)
- **Container vulnerability scanning**: fails on HIGH/CRITICAL (Trivy)
- **Terraform scanning**: flags insecure IaC patterns (Checkov)
- **Policy-as-Code**: blocks non-compliant Kubernetes/Terraform changes (OPA via Conftest)
- **Repeatable local deploy**: Helm → Kind → health checks

### Why it exists
Teams move fast. Guardrails make sure speed doesn’t turn into security incidents, unstable releases, or bad infrastructure decisions.

---

## Tech stack
- GitHub Actions (CI)
- OPA / Conftest (policy checks)
- Trivy (image vulnerability scan)
- Gitleaks (secret scanning)
- Checkov (Terraform scanning)
- Docker + Helm + Kind (local deploy)

---

## Repository structure




---

## Prerequisites (local)
Install these locally:
- Docker
- kind
- kubectl
- helm
- make
- curl

> If you don’t want to install scanners locally, this repo includes a Docker-based local CI runner.

---

## Quick start (local deployment)

### 1) Build image
```bash
make build

make kind-up

make deploy

make port-forward
make test

{"status":"ok","uptime_s":3}

chmod +x scripts/ci-local.sh
./scripts/ci-local.sh

### What it runs:

Gitleaks (secrets)

Docker build

Trivy (HIGH/CRITICAL)

Helm template render

Conftest policy checks on rendered YAML

Checkov scan on Terraform ###

### GitHub Actions CI

CI runs on:

Pull Requests

Push to main

Pipeline includes:

Secrets scan (Gitleaks)

Build image

Trivy image scan (HIGH/CRITICAL fail)

Render Helm → policy checks (Conftest + OPA)

Terraform scan (Checkov) ###


### Policies (OPA) included
Kubernetes policies

Located in policy/k8s/:

deny-root: requires runAsNonRoot=true

require-limits: requires CPU + memory limits

deny-loadbalancer: blocks Service.type=LoadBalancer

Terraform policies

Located in policy/terraform/:

s3-baseline: expects encryption + versioning resources included in the plan/module ###


./scripts/ci-local.sh

echo "AWS_SECRET_ACCESS_KEY=FAKEFAKEFAKE" > test.env
git add test.env


default = "delivery-guardrails-artifacts-<unique>"

kind load docker-image sentinelops:local --name sentinelops

docker images | grep sentinelops

docker images | grep sentinelops

kubectl get pods
kubectl describe pod <pod>
kubectl get events --sort-by=.metadata.creationTimestamp | tail -n 20

kubectl get svc sentinelops
kubectl get endpoints sentinelops



