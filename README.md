Terraform Infrastructure Deployment
This repository contains a Terraform configuration for provisioning AWS infrastructure, including S3 buckets, EC2 instances, security groups, and a Virtual Private Cloud (VPC).

Table of Contents
Overview
Files Used for Resource Creation
Directory Structure
Prerequisites
Usage
Modules
Contributing
License
Overview
This Terraform configuration sets up key infrastructure components in AWS:

S3 Buckets for object storage.
Security Groups to manage EC2 instance traffic.
EC2 Instances for compute resources.
VPC to isolate resources within a private network.
Files Used for Resource Creation
The following files are responsible for creating the respective AWS resources:

s3_buckets.tf: Defines S3 bucket configurations.
security_groups.tf: Configures security groups.
ec2_instances.tf: Provisions EC2 instances.
vpc.tf: Configures the Virtual Private Cloud.

```
.
├── README.md
├── backend.tf
├── ec2_instances.tf
├── modules
│   ├── ec2_module
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── ec2_security_group_module
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── s3_module
│   │   ├── README.md
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vpc_module
│       ├── README.md
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── provider.tf
├── s3_buckets.tf
├── security_groups.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── variables.tf
└── vpc.tf
```
