resource "aws_kms_key" "custom_key" {
  description             = "Custom key to test module"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

module "logs" {
  source = "../../"

  create_kms_key              = false
  log_group_kms_key_id        = aws_kms_key.custom_key.key_id
  log_group_retention_in_days = 30
  logs_path                   = "test-path"
}
