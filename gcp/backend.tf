terraform {
  backend "gcs" {
    bucket      = "pebabion-terraform-backend"
    prefix      = "terraform/state"
    credentials = "service_account.json"
  }
}
