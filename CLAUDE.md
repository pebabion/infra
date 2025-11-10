# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

Infrastructure-as-code repository with two separate Terraform configurations:

- **`gcp/`**: Google Cloud Platform infrastructure with GCS remote state backend (`pebabion-terraform-state` bucket)
- **`heroku/`**: Heroku platform infrastructure with local state (gitignored)

## Terraform Commands

All Terraform commands must be run from within the specific provider directory:

```bash
# For GCP infrastructure
cd gcp
terraform init
terraform plan
terraform apply

# For Heroku infrastructure
cd heroku
terraform init
terraform plan
terraform apply
```

GCP requires variables: `project_id`, `region`, `zone`, `budget_amount`, `notification_email`

Heroku requires `HEROKU_API_KEY` environment variable.

## Pre-commit Hooks

```bash
# Install pre-commit (one-time setup)
brew install pre-commit
pre-commit install

# Runs terraform_fmt with --args=-recursive automatically on commit
```

## CI/CD

GitHub Actions deploys Heroku infrastructure on push to `main` (Terraform 1.5.7):
- Runs from `./heroku` directory only
- Executes: fmt check → init → plan → apply -auto-approve
- Requires `HEROKU_API_KEY` GitHub secret

## Key Architecture Details

**GCP GKE Setup**: The cluster uses `remove_default_node_pool = true` pattern - creates minimal default pool that's immediately deleted, then manages separate node pools. Note extended timeouts: node pool creation (60m), deletion (2h).

**GCP Services**: Required APIs are enabled via Terraform (see `gcp/services.tf`).

**Heroku Provider**: Authentication via environment variable only (see `heroku/main.tf`).
