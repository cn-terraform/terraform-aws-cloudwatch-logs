provider "aws" {
  region = "us-east-1"
}

module "logs" {
  source                      = "../../"
  logs_path                   = "test-path"
  log_group_retention_in_days = 20
}
