# module "ec2_instance" {

module "ec2_instance" {
  source                      = "./modules/ec2_module"
  #ami_id                      = "ami-0e8d228ad90af673b"
  #instance_type               = "t2.micro"
  #key_name                    = "ec2-ansible"
  instance_name               = "slb001"
  #subnet_id                   = "subnet-abcdefgh"
  associate_public_ip_address = true
  root_volume_size            = 20
  #root_volume_type            = "gp2"
  #availability_zone           = "eu-west-2a"
  #additional_volume_name      = "slb001-volume001"
  #additional_volume_size      = 10
  #additional_volume_type      = "gp2"
  #additional_volume_device_name = "/dev/xdfh"
  tags              = { 
    Env       = "dev"
    Team      = "infra"
    Terraform = "yes" 
  }
}
