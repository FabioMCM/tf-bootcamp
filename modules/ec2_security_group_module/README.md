# AWS Security Group Terraform Module

This Terraform module creates an AWS Security Group with customizable ingress and egress rules.

## Features

- Creates a security group in the specified VPC.
- Allows definition of multiple ingress and egress rules.
- Outputs the ID of the created security group.

## Usage

```hcl
module "security_group" {
  source        = "./path-to-your-module"
  name          = "my-security-group"
  vpc_id        = "vpc-12345678"
  
  ingress_rules = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
