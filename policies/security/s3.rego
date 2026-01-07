package aws.s3

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  not input.encrypted
  msg := "S3 bucket must be encrypted"
}
