resource "google_billing_budget" "budget" {
  billing_account = data.google_billing_account.account.id
  display_name    = "Monthly Total Budget"
  amount {
    specified_amount {
      units = var.budget_amount
    }
  }
  threshold_rules {
    threshold_percent = 0.5
    spend_basis       = "CURRENT_SPEND"
  }

  all_updates_rule {
    monitoring_notification_channels = [
      google_monitoring_notification_channel.email_to_me.id
    ]
    disable_default_iam_recipients = true
  }
}
