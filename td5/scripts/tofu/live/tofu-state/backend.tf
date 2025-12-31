terraform {
  backend "s3" {
    bucket         = "td1-sample-devops-9904"
    key            = "td5/tofu/live/tofu-state"
    region         = "eu-west-1"
    encrypt        = true                                
    # TODO: fill in your own DynamoDB table name here!
    dynamodb_table = "td1-sample-devops-9904"
  }
}
