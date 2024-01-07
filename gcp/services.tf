resource "google_project_service" "billing" {
  project = var.project_id
  service = "cloudbilling.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}
