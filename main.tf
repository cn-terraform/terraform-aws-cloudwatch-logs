# ---------------------------------------------------------------------------------------------------------------------
# PROVIDER
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
  profile = var.profile
  region  = var.region
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "log_group" {
  name              = "${var.name_preffix}-log-group"
  retention_in_days = var.log_group_retention_in_days
  kms_key_id        = var.log_group_kms_key_id
  tags = {
    Name = "${var.name_preffix}-log-group"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG STREAM
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = "${var.name_preffix}-log-stream"
  log_group_name = aws_cloudwatch_log_group.log_group.name
}

