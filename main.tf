#------------------------------------------------------------------------------
# KMS encryption
#------------------------------------------------------------------------------
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_kms_key" "encryption_key" {
  count = var.create_kms_key ? 1 : 0

  description         = "KMS key to encrypt logs in group ${var.logs_path}"
  enable_key_rotation = true
  policy = templatefile("${path.module}/templates/kms_key_policy.tftpl", {
    policy_id  = "encryption-${var.logs_path}",
    account_id = data.aws_caller_identity.current.account_id,
    region     = data.aws_region.current.name
  })
}

#------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG GROUP
#------------------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "log_group" {
  name              = var.logs_path
  retention_in_days = var.log_group_retention_in_days
  kms_key_id        = var.create_kms_key ? aws_kms_key.encryption_key[0].arn : var.log_group_kms_key_id
  tags              = var.tags
}

#------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG STREAM
#------------------------------------------------------------------------------
resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = var.logs_path
  log_group_name = aws_cloudwatch_log_group.log_group.name
}
