# Terraform Cloud Platform

A production-oriented Terraform / OpenTofu reference showing how to separate **reusable modules from environment composition**.

The initial implementation provisions a small AWS VPC with public subnets and an Internet Gateway. It deliberately avoids NAT Gateways and managed clusters so a learning `plan` does not imply expensive infrastructure.

## Layout

```text
modules/
  network/
environments/
  dev/
.github/workflows/
```

## Validate

```bash
terraform fmt -recursive
terraform -chdir=environments/dev init -backend=false
terraform -chdir=environments/dev validate
terraform -chdir=environments/dev plan
```

OpenTofu can be used with the same module structure.

## Principles

- reusable modules have small, explicit interfaces;
- environments compose modules rather than duplicating resources;
- state and secrets are never committed;
- production backends use locking and encryption;
- IAM follows least privilege;
- CI runs formatting and validation before merge;
- cost, recovery and operational ownership are architecture concerns.

## Next steps

- remote state and locking reference;
- private subnets and egress strategy;
- EKS composition;
- observability baseline;
- policy checks;
- multi-account layout.
