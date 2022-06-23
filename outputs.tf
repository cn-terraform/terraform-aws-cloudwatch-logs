#------------------------------------------------------------------------------
# KMS encryption
#------------------------------------------------------------------------------
output "encryption_key_arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = var.create_kms_key ? aws_kms_key.encryption_key[0].arn : null
}

output "encryption_key_id" {
  description = "The globally unique identifier for the key."
  value       = var.create_kms_key ? aws_kms_key.encryption_key[0].key_id : null
}

#------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG GROUP
#------------------------------------------------------------------------------
output "log_group_name" {
  description = "The name of the log group."
  value       = aws_cloudwatch_log_group.log_group.name
}

output "log_group_retention_in_days" {
  description = "Specifies the number of days log events are retained"
  value       = aws_cloudwatch_log_group.log_group.retention_in_days
}

output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = aws_cloudwatch_log_group.log_group.arn
}

#------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG STREAM
#------------------------------------------------------------------------------
output "log_stream_name" {
  description = "The name of the log stream."
  value       = aws_cloudwatch_log_stream.log_stream.name
}

output "log_stream_log_group_name" {
  description = "The name of the log group under which the log stream was created"
  value       = aws_cloudwatch_log_stream.log_stream.log_group_name
}

output "log_stream_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log stream."
  value       = aws_cloudwatch_log_stream.log_stream.arn
}

output "logs_path" {
  description = "Path of the logs in CloudWatch"
  value       = var.logs_path
}
