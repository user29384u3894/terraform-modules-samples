resource "google_apphub_application" "apphub_app" {
  location       = var.region
  application_id = var.app_id
  scope {
    type = "REGIONAL"
  }
  attributes {
    environment {
      type = upper(var.env_id)
    }
  }
}