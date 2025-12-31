variable "region" {
  description = "AWS region for IAM/OIDC resources"
  type        = string
  default     = "eu-west-1"
}

variable "github_oidc_provider_url" {
  description = "GitHub OIDC provider URL"
  type        = string
  default     = "https://token.actions.githubusercontent.com"
}

variable "name" {
  description = "Base name for IAM roles"
  type        = string
  default     = "lambda-sample"
}

variable "github_repo" {
  description = "GitHub repo in OWNER/REPO format"
  type        = string
  default     = "LeoDessertenne/sample-td1-devops"
}

variable "lambda_base_name" {
  description = "Base name for Lambda resources"
  type        = string
  default     = "lambda-sample"
}

variable "tofu_state_bucket" {
  description = "S3 bucket for Tofu state"
  type        = string
  default     = "td1-sample-devops-9904"
}

variable "tofu_state_dynamodb_table" {
  description = "DynamoDB table for Tofu state locking"
  type        = string
  default     = "td1-sample-devops-9904"
}
