# devsecops/terraform/main.tf (only to demonstrate tfsec scans)
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devsecops" {
  bucket = "tfsec-devsecops-${random_id.suffix.hex}"
  force_destroy = true
}

resource "random_id" "suffix" {
  byte_length = 4
}
