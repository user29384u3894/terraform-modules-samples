locals {
  application_id = "${var.app_id}-${var.env_id}"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/apphub_application
resource "google_apphub_application" "apphub_app" {
  location       = var.region
  application_id = local.application_id
  scope {
    type = "REGIONAL"
  }
  attributes {
    environment {
      type = upper(var.env_type)
    }
  }
}