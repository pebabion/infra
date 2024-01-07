resource "google_monitoring_notification_channel" "email_to_me" {
  display_name = "Email To Me"
  type         = "email"

  labels = {
    email_address = var.notification_email
  }
}
