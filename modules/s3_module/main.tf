resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  # Enables versioning if specified
  versioning {
    enabled = var.enable_versioning
  }

  # Server-side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }

  # Access control
  acl = var.acl

  tags = var.tags
}

# Optionally create a public access block
resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}
