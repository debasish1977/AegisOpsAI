variable "iam_user_name" {
  description = "Name of the existing IAM user"
  type        = string
}

variable "policy_arns" {
  description = "Set of IAM policy ARNs to attach"
  type        = set(string)
}