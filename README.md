

```
├── README.md                # Project documentation
├── modules                  # Reusable modules
│   ├── ec2_module           # EC2 module
│   ├── ec2_security_group_module # Security group module
│   ├── s3_module            # S3 module
│   └── vpc_module           # VPC module
├── provider.tf              # AWS provider configuration
├── backend.tf               # Backend configuration for Terraform state
├── s3_buckets.tf            # S3 bucket definitions
├── security_groups.tf       # Security group definitions
├── terraform.tfstate        # Terraform state file
├── terraform.tfstate.backup # Backup of Terraform state
├── variables.tf             # Input variables
├── ec2_instances.tf         # EC2 instance definitions
└── vpc.tf                   # VPC configuration

```
