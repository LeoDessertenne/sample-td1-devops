provider "aws" {
  region = "eu-west-1"
}

module "state" {
  source = "../../modules/state-bucket"

  # TODO: fill in your own bucket name!
  name = "td1-sample-devops-9904"
}
