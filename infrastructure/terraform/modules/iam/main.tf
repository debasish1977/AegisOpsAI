data "aws_iam_user" "existing_user" {
  user_name = var.iam_user_name
}

resource "aws_iam_user_policy_attachment" "policy_attachments" {
  for_each = var.policy_arns

  user       = data.aws_iam_user.existing_user.user_name
  policy_arn = each.value
}