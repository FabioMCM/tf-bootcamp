###########################
###    EC2 INSTANCES    ###
###########################
# module "ec2_instance" {
#   source                      = "./modules/ec2_module"
#   #ami_id                      = "ami-0e8d228ad90af673b"
#   #instance_type               = "t2.micro"
#   #key_name                    = "ec2-ansible"
#   instance_name               = "slb001"
#   #subnet_id                   = "subnet-abcdefgh"
#   associate_public_ip_address = true
#   root_volume_size            = 20
#   #root_volume_type            = "gp2"
#   #availability_zone           = "eu-west-2a"
#   create_additional_volume     = true
#   additional_volume_name      = "slb001-volume001"
#   additional_volume_size      = 20
#   #additional_volume_type      = "gp2"
#   #additional_volume_device_name = "/dev/xdfh"
#   tags              = { 
#     Env       = "dev"
#     Team      = "infra"
#     Terraform = "yes" 
#   }
# }



###########################
###     S3 BUCKETS      ###
###########################
# module "s3_bucket" {
#   source = "./modules/s3_module"

#   bucket_name             = "fabiom-20241203"
#   enable_versioning       = true
#   sse_algorithm           = "AES256"
#   acl                     = "private"
#   tags                    = {
#     Env       = "dev"
#     Team      = "infra"
#     Terraform = "yes"
#   }
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }





###########################
###    NETWORK - VPC    ###
###########################
module "vpc" {
  source         = "./modules/vpc_module"
  name           = "dev-pvc"
  vpc_cidr       = "10.0.0.0/16"
  public_subnets = {
    "eu-west-2a" = "10.0.1.0/24"
    "eu-west-2b" = "10.0.2.0/24"
  }
  private_subnets = {
    "eu-west-2a" = "10.0.101.0/24"
    "eu-west-2b" = "10.0.102.0/24"
  }
}
