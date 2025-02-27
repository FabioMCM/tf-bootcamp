###########################
###     S3 BUCKETS      ###
###########################
# module "s3_bucket_fabiom-20241203-00" {
#   source = "./modules/s3_module"

#   bucket_name             = "fabiom-20241203-00"
#   enable_versioning       = true
#   sse_algorithm           = "AES256"
#   acl                     = "private"
#   tags                    = {
#     Env       = "dev"
#     Team      = "devops"
#     Terraform = "yes"
#   }
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# module "s3_bucket_abiom-20241203-01" {
#   source = "./modules/s3_module"

#   bucket_name             = "fabiom-20241203-01"
#   enable_versioning       = true
#   sse_algorithm           = "AES256"
#   acl                     = "private"
#   tags                    = {
#     Env       = "dev"
#     Team      = "devops"
#     Terraform = "yes"
#   }
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }
