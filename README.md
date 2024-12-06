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

- `s3_buckets.tf` : Defines S3 bucket configurations.
- `security_groups.tf` : Configures security groups.
- `ec2_instances.tf` : Provisions EC2 instances.
- `vpc.tf` : Configures the Virtual Private Cloud.


## **Directory Structure**
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

## **Prerequisites**
- **Terraform:** Ensure Terraform is installed on your system (version 1.0 or later is recommended).
- **AWS Account:** Access credentials configured locally (e.g., via AWS CLI).
- **Backend Configuration:** Adjust `backend.tf` as needed for your Terraform state storage.


## **Usage**
1. Clone the repository:
   ```git clone https://github.com/DovakPT/tf-bootcamp.git```
2. Initialize Terraform:
   ```terraform init```
3. Preview the changes:
   ```terraform plan```
4. Apply the configuration:
   ```terraform apply```
5. Destroy resources (**optional)**:
   ```terraform destroy```


## **Modules**
This project uses modularized Terraform configurations:
- `modules/ec2_module:` EC2 instance provisioning logic.
- `modules/ec2_security_group_module:` Security group rules.
- `modules/s3_module:` S3 bucket provisioning logic.
- `modules/vpc_module:` VPC creation and configuration.
Each module contains its own `README.md` file for detailed documentation.


## **Contributing**
Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.
