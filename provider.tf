provider "aws" {
  version = "~> 4.0"  # specify an appropriate version
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}
