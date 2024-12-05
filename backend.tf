terraform {
  backend "s3" {
    bucket = "dev-tf-statefm"    # Replace with your bucket name
    key    = "dev/terraform.tfstate"  # Path where the state file will be stored
    region = "eu-west-2"                   # Replace with the region of your bucket
    encrypt = true                         # Encrypt the state file in S3 (recommended)
  }
}
