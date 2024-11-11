terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.0"
    }
  }
}

provider "heroku" {
  # API Key is expected to be set via HEROKU_API_KEY environment variable
}
