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
module "ec2_instance" {
  source            = "./terraform-aws-ec2-module"
  region            = "us-east-1"
  ami               = "ami-12345678"
  instance_type     = "t2.micro"
  name              = "my-ec2-instance"
  tags              = { Environment = "dev" }
  key_name          = "my-key"
  root_volume_size  = 30
  root_volume_type  = "gp3"
  additional_volumes = [
    {
      device_name = "/dev/sdf"
      size        = 50
      type        = "gp2"
    }
  ]
}
