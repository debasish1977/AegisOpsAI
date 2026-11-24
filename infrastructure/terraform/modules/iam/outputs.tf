output "iam_user_name" {
  description = "IAM user receiving the policies"
  value       = data.aws_iam_user.existing_user.user_name
}

output "attached_policies" {
  description = "IAM policies managed by this module"

  value = [
    for policy in aws_iam_user_policy_attachment.policy_attachments :
    policy.policy_arn
  ]
}