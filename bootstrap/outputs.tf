output "tfstate_bucket_name" {
  value = aws_s3_bucket.tfstate.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.tf_lock.name
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_actions_terraform.arn
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}