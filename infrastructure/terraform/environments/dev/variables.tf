variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "iam_user_name" {
  description = "Existing IAM user name"
  type        = string
}

variable "bedrock_policy_arns" {
  description = "Amazon Bedrock IAM policies"
  type        = set(string)
}