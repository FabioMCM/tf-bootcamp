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
###     S3 BUCKETS      ###
###########################
# module "s3_bucket_000" {
#   source = "./modules/s3_module"

#   bucket_name             = "fabiom-20241203-00"
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

# module "s3_bucket_001" {
#   source = "./modules/s3_module"

#   bucket_name             = "fabiom-20241203-01"
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