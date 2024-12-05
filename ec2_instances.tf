provider "aws" {
  region     = var.aws_region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "aws_region" {
  default = "eu-west-2"
}

###########################
###    EC2 INSTANCES    ###
###########################
module "ec2_instance_0000" {
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
  #create_additional_volume     = true
  #additional_volume_name      = "slb001-volume001"
  #additional_volume_size      = 20
  #additional_volume_type      = "gp2"
  #additional_volume_device_name = "/dev/xdfh"
  tags              = { 
    Env       = "dev"
    Team      = "infra"
    Terraform = "yes" 
  }
}

# module "ec2_instance_0001" {
#   source                      = "./modules/ec2_module"
#   #ami_id                      = "ami-0e8d228ad90af673b"
#   #instance_type               = "t2.micro"
#   #key_name                    = "ec2-ansible"
#   instance_name               = "slb002"
#   #subnet_id                   = "subnet-0082cb4d471785dd3"
#   associate_public_ip_address = true
#   root_volume_size            = 20
#   #root_volume_type            = "gp2"
#   #availability_zone           = "eu-west-2a"
#   #create_additional_volume     = true
#   #additional_volume_name      = "slb002-volume001"
#   #additional_volume_size      = 20
#   #additional_volume_type      = "gp2"
#   #additional_volume_device_name = "/dev/xdfh"
#   tags              = { 
#     Env       = "dev"
#     Team      = "infra"
#     Terraform = "yes" 
#   }
# }
