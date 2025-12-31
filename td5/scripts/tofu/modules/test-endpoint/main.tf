terraform {
  required_providers {
    time = {
      source = "hashicorp/time"
    }
    http = {
      source = "hashicorp/http"
    }
  }
}

resource "time_sleep" "wait" {
  create_duration = "30s"
}

data "http" "test_endpoint" {
  url    = var.endpoint
  method = "GET"

  depends_on = [time_sleep.wait]
}
