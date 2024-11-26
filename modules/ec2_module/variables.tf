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


variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0e8d228ad90af673b"
}

variable "key_name" {
  description = "Key name to use for the EC2 instance"
  type        = string
  default     = "ec2-ansible"
}

variable "tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
}

variable "root_volume_type" {
  description = "Type of the root volume (gp2, io1, etc.)"
  type        = string
}

variable "data_volume_size" {
  description = "Size of the additional volume in GB"
  type        = number
}

variable "data_volume_type" {
  description = "Type of the additional volume (gp2, io1, etc.)"
  type        = string
}
