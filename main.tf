# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.logs_path
  retention_in_days = var.log_group_retention_in_days
  kms_key_id        = var.log_group_kms_key_id
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG STREAM
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = var.logs_path
  log_group_name = aws_cloudwatch_log_group.log_group.name
}
