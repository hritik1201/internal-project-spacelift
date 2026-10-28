provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "terraform-ec2-example"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
# Credentials come from the environment (AWS_PROFILE, SSO, or env vars).
# Never put access keys in this repo.
