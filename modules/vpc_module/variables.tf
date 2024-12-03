variable "name" {
  description = "Name prefix for resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "Map of public subnet CIDRs keyed by availability zone"
  type        = map(string)
}

variable "private_subnets" {
  description = "Map of private subnet CIDRs keyed by availability zone"
  type        = map(string)
}
