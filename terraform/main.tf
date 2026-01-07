provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "good_bucket" {
  bucket = "circleci-good-bucket-${random_string.suffix.result}"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt" {
  bucket = aws_s3_bucket.good_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "random_string" "suffix" {
  length  = 6
  special = false
}
