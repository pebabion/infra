terraform {
  backend "gcs" {
    bucket = "pebabion-terraform-state"
    prefix = "terraform.tfstate"
  }
}
