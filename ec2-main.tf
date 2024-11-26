module "ec2_instance" {
  source            = "./modules/ec2_module"
  #region            = "us-east-1"
  #ami               = "ami-12345678"
  instance_type     = "t2.micro"
  name              = "slb001"
  
  key_name          = "my-key"
  root_volume_size  = 30
  root_volume_type  = "gp3"
  tags              = { 
    Env       = "dev"
    Team      = "Infra"
    Terraform = "yes" 
  }

  additional_volumes = [
    {
      device_name = "/dev/sdf"
      size        = 50
      type        = "gp2"
    }
  ]
}
