resource "aws_vpc" "sample" {
  # checkov:skip=CKV2_AWS_11:VPC Flow logging is not required for this example
  cidr_block = var.cidr_block
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.sample.id
}
