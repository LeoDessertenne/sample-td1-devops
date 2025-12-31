variable "name" {
  description = "The base name for the function and all other resources"
  type        = string
  default     = "lambda-sample"
}

variable "region" {
  description = "AWS region for the deployment"
  type        = string
  default     = "us-east-2"
}

variable "runtime" {
  description = "Lambda runtime"
  type        = string
  default     = "nodejs20.x"
}

variable "memory_size" {
  description = "Lambda memory size in MB"
  type        = number
  default     = 128
}

variable "timeout" {
  description = "Lambda timeout in seconds"
  type        = number
  default     = 5
}
