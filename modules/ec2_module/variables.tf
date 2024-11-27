# variable "region" {
#   description = "AWS region"
#   type        = string
#   default     = "eu-west-2"
# }

# variable "ami" {
#   description = "AMI ID for the EC2 instance"
#   type        = string
#   default     = "ami-0e8d228ad90af673b"
# }

# variable "instance_type" {
#   description = "EC2 instance type"
#   type        = string
#   default     = "t2.micro"
# }

# variable "name" {
#   description = "Name tag for the EC2 instance"
#   type        = string
# }

# variable "tags" {
#   description = "Additional tags for the EC2 instance"
#   type        = map(string)
#   default     = {}
# }

# variable "key_name" {
#   description = "Key name to use for the EC2 instance"
#   type        = string
#   default     = "ec2-ansible"
# }

# variable "root_volume_size" {
#   description = "Root volume size in GB"
#   type        = number
# }

# variable "root_volume_type" {
#   description = "Root volume type (e.g., gp2, gp3)"
#   type        = string
# }

# variable "additional_volumes" {
#   description = "Additional EBS volumes to attach"
#   type = list(object({
#     device_name = string
#     size        = number
#     type        = string
#   }))
#   default = []
# }


# variable "instance_name" {
#   description = "Name of the EC2 instance"
#   type        = string
# }

# variable "instance_type" {
#   description = "EC2 instance type"
#   type        = string
#   default     = "t2.micro"
# }

# variable "ami" {
#   description = "AMI ID for the EC2 instance"
#   type        = string
#   default     = "ami-0e8d228ad90af673b"
# }

# variable "key_name" {
#   description = "Key name to use for the EC2 instance"
#   type        = string
#   default     = "ec2-ansible"
# }

# variable "tags" {
#   description = "Tags for the EC2 instance"
#   type        = map(string)
# }

# variable "root_volume_size" {
#   description = "Size of the root volume in GB"
#   type        = number
# }

# variable "root_volume_type" {
#   description = "Type of the root volume (gp2, io1, etc.)"
#   type        = string
# }

# variable "data_volume_size" {
#   description = "Size of the additional volume in GB"
#   type        = number
# }

# variable "data_volume_type" {
#   description = "Type of the additional volume (gp2, io1, etc.)"
#   type        = string
# }


variable "ami_id" {
  description = "The ID of the AMI to use"
  type        = string
  default     = "ami-0e8d228ad90af673b"
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name to access the instance"
  type        = string
  default     = "ec2-ansible"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "my-instance"
}

variable "tags" {
  description = "Additional tags for the instance"
  type        = map(string)
  default     = {}
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched"
  type        = string
  default     = "subnet-0f14a9bdeed172c79"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address"
  type        = bool
  default     = false
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 20
}

variable "root_volume_type" {
  description = "Type of the root volume (gp2, gp3, io1, etc.)"
  type        = string
  default     = "gp2"
}

variable "availability_zone" {
  description = "Availability zone for the additional volume"
  type        = string
  default     = "eu-west-2a"
}

variable "additional_volume_name" {
  description = "Name tag for the additional volume"
  type        = string
  default     = null
}

variable "additional_volume_size" {
  description = "Size of the additional volume in GB"
  type        = number
  default     = null
}

variable "additional_volume_type" {
  description = "Type of the additional volume (gp2, gp3, io1, etc.)"
  type        = string
  default     = "gp2"
}

variable "additional_volume_device_name" {
  description = "Device name for the additional volume (e.g., /dev/xvdf)"
  type        = string
  default     = "/dev/xvdb"
}

variable "additional_volume_tags" {
  description = "Additional tags for the additional volume"
  type        = map(string)
  default     = {}
}