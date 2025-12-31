provider "aws" {
  region = var.region
}

module "oidc_provider" {
  source = "../../modules/github-aws-oidc"

  provider_url = var.github_oidc_provider_url

}

module "iam_roles" {
  source = "github.com/brikis98/devops-book//ch5/tofu/modules/gh-actions-iam-roles"

  name              = var.name
  oidc_provider_arn = module.oidc_provider.oidc_provider_arn

  enable_iam_role_for_testing = true

  github_repo      = var.github_repo
  lambda_base_name = var.lambda_base_name

  enable_iam_role_for_plan  = true
  enable_iam_role_for_apply = true

  tofu_state_bucket         = var.tofu_state_bucket
  tofu_state_dynamodb_table = var.tofu_state_dynamodb_table
}
