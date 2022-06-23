module "logs" {
  source = "../../"

  create_kms_key              = false
  log_group_kms_key_id        = "01234567-89ab-cdef-0123-456789abcdef"
  log_group_retention_in_days = 30
  logs_path                   = "test-path"
}
