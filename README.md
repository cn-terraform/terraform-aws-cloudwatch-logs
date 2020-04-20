# AWS CloudWatch Logs Terraform Module #

This Terraform module deploys an AWS CloudWatch Log Stream and Group.

[![CircleCI](https://circleci.com/gh/cn-terraform/terraform-aws-cloudwatch-logs/tree/master.svg?style=svg)](https://circleci.com/gh/cn-terraform/terraform-aws-cloudwatch-logs/tree/master)
[![](https://img.shields.io/github/license/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/issues/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/issues-closed/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/languages/code-size/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/repo-size/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)

## Usage

Check valid versions on:
* Github Releases: <https://github.com/cn-terraform/terraform-aws-cloudwatch-logs/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/cn-terraform/cloudwatch-logs/aws>

        module "aws-cw-logs" {
            source  = "cn-terraform/cloudwatch-logs/aws"
            version = "1.0.4"
            logs_path                   = "/ecs/service1/logs"
            profile                     = var.profile
            region                      = var.region
            log_group_retention_in_days = var.log_group_retention_in_days
            log_group_kms_key_id        = var.log_group_kms_key_id
        }

## Output values

* logs_path: Path of the logs in CloudWatch
* log_group_arn: The Amazon Resource Name (ARN) specifying the log group.
* log_stream_arn: The Amazon Resource Name (ARN) specifying the log stream.
