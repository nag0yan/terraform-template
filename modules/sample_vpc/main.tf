resource "aws_vpc" "sample" {
  cidr_block = var.cidr_block
}

resource "aws_flow_log" "sample" {
  log_destination      = "arn:aws:logs:ap-northeast-1:123456789012:log-group:sample-flow-log"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.sample.id
  log_destination_type = "cloud-watch-logs"
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.sample.id
}
