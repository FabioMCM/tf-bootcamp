# Terraform Module: AWS VPC with Subnets and Internet Gateway

This Terraform module creates a Virtual Private Cloud (VPC) along with associated public and private subnets, an Internet Gateway, and necessary routing configurations in AWS.

## Features

- Creates a VPC with customizable CIDR block and DNS settings.
- Configures public and private subnets across multiple availability zones.
- Deploys an Internet Gateway and associates it with the VPC.
- Sets up a public route table and links it to the public subnets.
- Adds a default route for public subnets to access the Internet.

## Usage

```hcl
module "vpc_dev" {
  source = "./path-to-module"

  vpc_cidr       = "10.0.0.0/16"
  name           = "dev-vpc"
  public_subnets = {
    "us-east-1a" = "10.0.1.0/24"
    "us-east-1b" = "10.0.2.0/24"
  }
  private_subnets = {
    "us-east-1a" = "10.0.101.0/24"
    "us-east-1b" = "10.0.102.0/24"
  }
}

module "vpc_prod" {
  source = "./path-to-module"

  vpc_cidr       = "10.0.0.0/16"
  name           = "prod-vpc"
  public_subnets = {
    "us-east-1a" = "10.0.3.0/24"
    "us-east-1b" = "10.0.4.0/24"
  }
  private_subnets = {
    "us-east-1a" = "10.0.103.0/24"
    "us-east-1b" = "10.0.104.0/24"
  }
}
