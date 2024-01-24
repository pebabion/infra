variable "services" {
  type = list(string)
  default = [
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "billingbudgets.googleapis.com",
    "cloudbilling.googleapis.com",
    "iam.googleapis.com",
    "container.googleapis.com",
  ]
}

resource "google_project_service" "project_services" {
  for_each = toset(var.services)
  project  = var.project_id
  service  = each.value

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}
