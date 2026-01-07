package aws.s3

test_encrypted_bucket_allowed {
  not deny with input as {
    "resource_type": "aws_s3_bucket",
    "encrypted": true
  }
}
