module "logs" {
  source = "../../"

  create_kms_key              = true
  log_group_kms_key_id        = null
  log_group_retention_in_days = 30
  logs_path                   = "test-path"
}
