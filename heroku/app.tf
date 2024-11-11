resource "heroku_app" "pebabion-sample-app" {
  name   = "pebabion-sample-app"
  region = "us"


  config_vars = {
    ENVIRONMENT = "production"
  }
}

