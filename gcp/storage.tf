resource "google_storage_bucket" "pebabion-personal-finance" {
  name          = "pebabion-personal-finance"
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true
}

resource "google_storage_bucket" "pebabion-terraform-backend" {
  name          = "pebabion-terraform-backend"
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = false
}
