# Terraform EC2 Example (AWS)

A small, clean Terraform example that provisions an EC2 instance with a security group on AWS.

This is a learning / demo setup — not production infrastructure.

## What it creates

- 1 EC2 instance (`var.ami_id`, `var.instance_type`)
- 1 security group allowing SSH only from `var.allowed_ssh_cidr`

## Security — read this first

- **No AWS credentials are stored in this repo.** The provider uses your local AWS credentials (environment variables, AWS CLI profile, or SSO).
- Never commit `*.tfvars` with real values, `.tfstate` files, or keys. Those are gitignored here.
- SSH is restricted to a CIDR you set — do not set it to `0.0.0.0/0`.

## Usage

```bash
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your own AMI, VPC, key pair, and allowed SSH CIDR
# Do NOT commit terraform.tfvars

export AWS_PROFILE=your-profile   # or set AWS_ACCESS_KEY_ID / AWS_SECRET_ACCESS_KEY in your shell, never in a file
terraform init
terraform plan
terraform apply
```

To destroy:

```bash
terraform destroy
```

## Files

- `main.tf` — EC2 instance
- `provider.tf` — AWS provider (region only; credentials from environment)
- `security.tf` — Security group
- `variable.tf` — Input variables, no secret defaults
- `terraform.tfvars.example` — Example values only, no real IDs or keys
- `terraform.tf` — Required providers
