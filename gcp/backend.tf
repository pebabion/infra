terraform {
  backend "gcs" {
    bucket = "pebabion-terraform-backend"
    prefix = "terraform/state"
  }
}
