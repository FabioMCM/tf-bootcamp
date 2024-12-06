# **AWS Terraform Infrastructure Deployment**
This repository contains a Terraform configuration for provisioning AWS infrastructure, including S3 buckets, EC2 instances, security groups, and a Virtual Private Cloud (VPC).

## **Table of Contents**
[Headers](#headers) 
[Emphasis](#emphasis) 
<a name="headers"/> 
## Headers

```
├── README.md                         # Project documentation
├── modules                           # Reusable modules
│   ├── ec2_module                    # EC2 module
│   ├── ec2_security_group_module     # Security group module
│   ├── s3_module                     # S3 module
│   └── vpc_module                    # VPC module
├── provider.tf                       # AWS provider configuration
├── backend.tf                        # Backend configuration for Terraform state
├── ec2_instances.tf                  # EC2 instance definitions
├── s3_buckets.tf                     # S3 bucket definitions
├── security_groups.tf                # Security group definitions
├── variables.tf                      # Input variables
└── vpc.tf                            # VPC configuration

```
