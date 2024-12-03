variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use (e.g., AES256)"
  type        = string
  default     = "AES256"
}

variable "acl" {
  description = "The access control list (ACL) for the bucket"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags to associate with the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "block_public_acls" {
  description = "Block public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Block public policies for this bucket"
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Ignore public ACLs for this bucket"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restrict public bucket access for this bucket"
  type        = bool
  default     = true
}
