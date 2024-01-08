resource "google_storage_bucket" "pebabion_personal_finances" {
  name          = "pebabion-personal-finances"
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = true
}

resource "google_storage_bucket" "pebabion_terraform_state" {
  name          = "pebabion-terraform-state"
  location      = var.region
  storage_class = "STANDARD"
  force_destroy = false
}
