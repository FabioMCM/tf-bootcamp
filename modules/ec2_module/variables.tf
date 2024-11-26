variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0db382011bbc0b844"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "tags" {
  description = "Additional tags for the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "key_name" {
  description = "Key name to use for the EC2 instance"
  type        = string
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
}

variable "root_volume_type" {
  description = "Root volume type (e.g., gp2, gp3)"
  type        = string
}

variable "additional_volumes" {
  description = "Additional EBS volumes to attach"
  type = list(object({
    device_name = string
    size        = number
    type        = string
  }))
  default = []
}
