variable "name" {
  description = "The name for the API Gateway"
  type        = string
}

variable "function_arn" {
  description = "Lambda function ARN to integrate"
  type        = string
}

variable "api_gateway_routes" {
  description = "List of routes in API Gateway (e.g., GET /)"
  type        = list(string)
}
