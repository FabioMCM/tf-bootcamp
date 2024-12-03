# AWS S3 Bucket Terraform Module

This Terraform module creates and manages an Amazon S3 bucket with optional features such as versioning, server-side encryption, and public access block configuration. The module provides flexibility for configuring bucket policies and tags to meet various use cases.

## Features

- **S3 Bucket Creation**: Create an S3 bucket with customizable settings.
- **Versioning**: Enable or disable object versioning for the bucket.
- **Server-Side Encryption**: Configure server-side encryption with a specified algorithm.
- **Access Control**: Define the bucket's ACL (Access Control List).
- **Public Access Block**: Optionally block public access at the bucket level.
- **Tagging**: Assign tags to the bucket for resource management.

## Usage

```hcl
module "s3_bucket" {
  source = "./path-to-module"

  bucket_name           = "my-unique-bucket-name"
  enable_versioning     = true
  sse_algorithm         = "AES256"
  acl                   = "private"
  tags = {
    Environment = "Dev"
    Team        = "Engineering"
    Terraform   = "yes"
  }

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls     
