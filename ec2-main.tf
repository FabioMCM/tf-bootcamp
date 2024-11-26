# module "ec2_instance" {
#   source            = "./modules/ec2_module"
#   region           = "us-east-1"
#   ami              = "ami-12345678"
#   instance_type     = "t2.micro"
#   name              = "slb001"
#   key_name         = "my-key"
#   root_volume_size  = 20
#   root_volume_type  = "gp2"
#   tags              = { 
#     Env       = "dev"
#     Team      = "infra"
#     Terraform = "yes" 
#   }

#   additional_volumes = [
#     {
#       device_name = "/dev/sdf"
#       size        = 10
#       type        = "gp2"
#     }
#   ]
# }

module "ec2_instance" {
  source           = "./modules/ec2_module"
  instance_name    = "slb000"
  #key_name         = var.key_name
  #tags             = var.tags
  root_volume_size = 20
  root_volume_type = "gp2"

  data_volume_size = 10
  data_volume_type = "gp2"

  tags              = { 
    Env       = "dev"
    Team      = "infra"
    Terraform = "yes" 
  }
}
