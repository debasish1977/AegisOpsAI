output "bedrock_iam_user" {
  value = module.bedrock_iam_permissions.iam_user_name
}

output "bedrock_attached_policies" {
  value = module.bedrock_iam_permissions.attached_policies
}