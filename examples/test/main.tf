module "logs" {
  source                      = "../../"
  logs_path                   = "test-path"
  log_group_retention_in_days = 30
}
