resource "heroku_app" "sample-app" {
  name = "sample-app"
  region = "us"


  config_vars = {
    ENVIRONMENT = "production"
  }
}

