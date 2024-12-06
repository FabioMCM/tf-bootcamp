# **AWS Terraform Infrastructure Deployment**
This repository contains a Terraform configuration for provisioning AWS infrastructure, including S3 buckets, EC2 instances, security groups, and a Virtual Private Cloud (VPC).


## **Table of Contents**
[Headers](#headers)  
[Emphasis](#emphasis)  
...snip...    
<a name="headers"/>


## **Overview**
This Terraform configuration sets up key infrastructure components in AWS:
- S3 Buckets for object storage.
- Security Groups to manage EC2 instance traffic.
- EC2 Instances for compute resources.
- VPC to isolate resources within a private network


## **Files Used for Resource Creation**
The following files are responsible for creating the respective AWS resources:

- s3_buckets.tf : Defines S3 bucket configurations.
- security_groups.tf : Configures security groups.
- ec2_instances.tf : Provisions EC2 instances.
- vpc.tf : Configures the Virtual Private Cloud.



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
