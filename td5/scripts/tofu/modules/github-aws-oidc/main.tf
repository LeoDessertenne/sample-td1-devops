resource "aws_iam_openid_connect_provider" "github_actions" {
  url             = var.provider_url
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = var.thumbprint_list
}
