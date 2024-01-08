resource "google_billing_account_iam_binding" "editor" {
  billing_account_id = data.google_billing_account.account.id
  role               = "roles/billing.admin"
  members = [
    "serviceAccount:${google_service_account.terraform_sa.email}",
  ]
}
