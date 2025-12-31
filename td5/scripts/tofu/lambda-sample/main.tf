provider "aws" {
  region = var.region
}

module "function" {
  source = "../modules/lambda"

  name = var.name

  src_dir = "${path.module}/src"
  runtime = var.runtime
  handler = "index.handler"

  memory_size = var.memory_size
  timeout     = var.timeout

  environment_variables = {
    NODE_ENV = "production"
  }
}

module "gateway" {
  source = "../modules/api-gateway"

  name = var.name
  function_arn       = module.function.function_arn
  api_gateway_routes = ["GET /"]
}
