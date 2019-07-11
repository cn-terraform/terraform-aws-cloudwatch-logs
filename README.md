# AWS CloudWatch Logs Terraform Module #

This Terraform module deploys an AWS CloudWatch Log Stream and Group.

[![CircleCI](https://circleci.com/gh/jnonino/terraform-aws-cloudwatch-logs/tree/master.svg?style=svg)](https://circleci.com/gh/jnonino/terraform-aws-cloudwatch-logs/tree/master)

## Usage

Check valid versions on:
* Github Releases: <https://github.com/jnonino/terraform-aws-cloudwatch-logs/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/jnonino/cloudwatch-logs/aws>

        module "ecs-fargate": 
            source  = "jnonino/cloudwatch-logs/aws"
            version = "1.0.0"

            name_preffix                = var.name_preffix
            profile                     = var.profile
            region                      = var.region
            log_group_name              = var.log_group_name
            log_group_retention_in_days = var.log_group_retention_in_days
            log_group_kms_key_id        = var.log_group_kms_key_id
        }

## Output values

* log_group_arn: The Amazon Resource Name (ARN) specifying the log group.
* log_stream_arn: The Amazon Resource Name (ARN) specifying the log stream.
