# Terraform AWS EC2 Module

This module creates an EC2 instance with customizable attributes such as instance name, tags, key pair, root volume, and additional volumes.

## Inputs

- `region`: AWS region (default: `us-east-1`).
- `ami`: AMI ID for the instance.
- `instance_type`: Type of the EC2 instance (default: `t2.micro`).
- `name`: Name tag for the instance.
- `tags`: Additional tags (map of key-value pairs).
- `key_name`: Key name for SSH access.
- `root_volume_size`: Root volume size in GB.
- `root_volume_type`: Root volume type (e.g., gp2, gp3).
- `additional_volumes`: List of additional EBS volumes.

## Outputs

- `instance_id`: ID of the created instance.
- `public_ip`: Public IP address of the instance.

## Example Usage

```hcl
module "ec2_instance_slb001" {
  source                      = "./modules/ec2_module"
  #ami_id                      = "ami-0e8d228ad90af673b"
  #instance_type               = "t2.micro"
  #key_name                    = "ec2-ansible"
  instance_name               = "slb001"
  #subnet_id                   = "subnet-0082cb4d471785dd3"
  associate_public_ip_address = true
  root_volume_size            = 20
  #root_volume_type            = "gp2"
  #availability_zone           = "eu-west-2a"
  create_additional_volume     = true
  additional_volume_name      = "slb001-volume001"
  additional_volume_size      = 20
  #additional_volume_type      = "gp2"
  #additional_volume_device_name = "/dev/xdfh"
  tags              = { 
    Env       = "dev"
    Team      = "abc"
    Terraform = "yes" 
  }
}

module "ec2_instance_slb002" {
  source                      = "./modules/ec2_module"
  #ami_id                      = "ami-0e8d228ad90af673b"
  #instance_type               = "t2.micro"
  #key_name                    = "ec2-ansible"
  instance_name               = "slb002"
  #subnet_id                   = "subnet-0082cb4d471785dd3"
  associate_public_ip_address = true
  root_volume_size            = 20
  #root_volume_type            = "gp2"
  #availability_zone           = "eu-west-2a"
  create_additional_volume     = true
  additional_volume_name      = "slb002-volume001"
  additional_volume_size      = 20
  #additional_volume_type      = "gp2"
  #additional_volume_device_name = "/dev/xdfh"
  tags              = { 
    Env       = "dev"
    Team      = "abc"
    Terraform = "yes" 
  }
}
