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
###    NETWORK - VPC    ###
###########################
# module "vpc_dev" {
#   source         = "./modules/vpc_module"
#   name           = "dev-pvc"
#   vpc_cidr       = "10.0.0.0/16"
#   public_subnets = {
#     "eu-west-2a" = "10.0.1.0/24"
#     "eu-west-2b" = "10.0.2.0/24"
#   }
#   private_subnets = {
#     "eu-west-2a" = "10.0.101.0/24"
#     "eu-west-2b" = "10.0.102.0/24"
#   }
# }

# module "vpc_prod" {
#   source         = "./modules/vpc_module"
#   name           = "prod-pvc"
#   vpc_cidr       = "10.0.0.0/16"
#   public_subnets = {
#     "eu-west-2a" = "10.0.3.0/24"
#     "eu-west-2b" = "10.0.4.0/24"
#   }
#   private_subnets = {
#     "eu-west-2a" = "10.0.103.0/24"
#     "eu-west-2b" = "10.0.104.0/24"
#   }
# }
