variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key ID"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
  sensitive   = true
}

variable "AWS_REGION" {
description = "AWS Region"
type        = string
default     = "eu-west-2"
}

# variable "Security_Group"{
#     type = list
#     default = ["sg-24076", "sg-90890", "sg-456789"]
# }

# variable "AMIS" {
#     type = map
#     default = {
#         us-east-1 = "ami-0f40c8f97004632f9"
#         us-east-2 = "ami-05692172625678b4e"
#         us-west-2 = "ami-0352d5a37fb4f603f"
#         us-west-1 = "ami-0f40c8f97004632f9"
#     }
# }

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
