resource "google_service_account" "terraform_sa" {
  account_id   = "terraform-sa"
  display_name = "terraform-sa"
  description  = "Used by Terraform to manage infra"
}

resource "google_service_account" "gke_sa" {
  account_id   = "gke-sa"
  display_name = "gke-sa"
  description  = "Used by GKE to manage infra"
}
