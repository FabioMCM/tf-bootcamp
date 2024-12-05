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
###  EC2 NETWORK RULES  ###
###########################
# module "ec2_security_group" {
#   source  = "./ec2_security_group"
#   name    = "example-sg"
#   vpc_id  = "vpc-0abcd1234efgh5678"

#   ingress_rules = [
#     {
#       from_port   = 22
#       to_port     = 22
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#   ]
# }

# output "security_group_id" {
#   value = module.ec2_security_group.security_group_id
# }
