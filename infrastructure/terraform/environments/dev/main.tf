module "bedrock_iam_permissions" {
  source = "../../modules/iam"

  iam_user_name = var.iam_user_name
  policy_arns   = var.bedrock_policy_arns
}