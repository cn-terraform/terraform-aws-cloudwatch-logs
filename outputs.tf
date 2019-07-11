# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG GROUP
# ---------------------------------------------------------------------------------------------------------------------
output "log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group."
  value       = aws_cloudwatch_log_group.log_group.arn
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS CLOUDWATCH LOG STREAM
# ---------------------------------------------------------------------------------------------------------------------
output "log_stream_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log stream."
  value       = aws_cloudwatch_log_stream.log_stream.arn
}

