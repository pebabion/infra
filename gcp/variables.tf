variable "project_id" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
}

variable "zone" {
  type        = string
  description = "The zone to deploy to"
}

variable "budget_amount" {
  type        = number
  description = "The budget amount to set"
}

variable "notification_email" {
  type        = string
  description = "The email address to send notifications to"

}
