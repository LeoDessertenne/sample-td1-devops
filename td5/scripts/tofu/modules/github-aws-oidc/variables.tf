variable "provider_url" {
  description = "The URL the identity provider uses for OIDC"
  type        = string
}

variable "thumbprint_list" {
  description = "OIDC provider thumbprints (SHA1) used by AWS"
  type        = list(string)
  default     = ["7560d6f40fa55195f740ee2b1b7c0b4836cbe103"]
}
