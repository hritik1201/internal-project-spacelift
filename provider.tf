provider "aws" {
  region = var.region
}
# Credentials come from the environment (AWS_PROFILE, SSO, or env vars).
# Never put access keys in this repo.
