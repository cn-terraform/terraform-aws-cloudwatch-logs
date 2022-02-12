# AWS CloudWatch Logs Terraform Module #

This Terraform module deploys an AWS CloudWatch Log Stream and Group.

[![](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs/workflows/terraform/badge.svg)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs/actions?query=workflow%3Aterraform)
[![](https://img.shields.io/github/license/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/issues/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/issues-closed/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/languages/code-size/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)
[![](https://img.shields.io/github/repo-size/cn-terraform/terraform-aws-cloudwatch-logs)](https://github.com/cn-terraform/terraform-aws-cloudwatch-logs)

## Usage

Check valid versions on:
* Github Releases: <https://github.com/cn-terraform/terraform-aws-cloudwatch-logs/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/cn-terraform/cloudwatch-logs/aws>

## Install pre commit hooks.

Pleas run this command right after cloning the repository.

        pre-commit install

For that you may need to install the folowwing tools:
* [Pre-commit](https://pre-commit.com/) 
* [Terraform Docs](https://terraform-docs.io/)
* [tfsec](https://tfsec.dev/)

In order to run all checks at any point run the following command:

        pre-commit run --all-files

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.74 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.74 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_stream.log_stream](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_group_kms_key_id"></a> [log\_group\_kms\_key\_id](#input\_log\_group\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. | `string` | `""` | no |
| <a name="input_log_group_retention_in_days"></a> [log\_group\_retention\_in\_days](#input\_log\_group\_retention\_in\_days) | (Optional) Specifies the number of days you want to retain log events in the specified log group. Default to 30 days | `number` | `30` | no |
| <a name="input_logs_path"></a> [logs\_path](#input\_logs\_path) | Path of the logs in CloudWatch | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_log_group_arn"></a> [log\_group\_arn](#output\_log\_group\_arn) | The Amazon Resource Name (ARN) specifying the log group. |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | The name of the log group. |
| <a name="output_log_group_retention_in_days"></a> [log\_group\_retention\_in\_days](#output\_log\_group\_retention\_in\_days) | Specifies the number of days log events are retained |
| <a name="output_log_stream_arn"></a> [log\_stream\_arn](#output\_log\_stream\_arn) | The Amazon Resource Name (ARN) specifying the log stream. |
| <a name="output_log_stream_log_group_name"></a> [log\_stream\_log\_group\_name](#output\_log\_stream\_log\_group\_name) | The name of the log group under which the log stream was created |
| <a name="output_log_stream_name"></a> [log\_stream\_name](#output\_log\_stream\_name) | The name of the log stream. |
| <a name="output_logs_path"></a> [logs\_path](#output\_logs\_path) | Path of the logs in CloudWatch |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
