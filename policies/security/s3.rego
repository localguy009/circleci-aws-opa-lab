package security.s3

deny[msg] {
  input.type == "aws_s3_bucket"
  not input.encrypted
  msg := "S3 buckets must be encrypted"
}

deny[msg] {
  input.type == "aws_s3_bucket"
  input.public == true
  msg := "S3 buckets must not be public"
}
