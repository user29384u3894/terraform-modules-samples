resource "google_apphub_application" "apphub_app" {
  location       = var.region
  application_id = var.app_id
  scope {
    type = "GLOBAL"
  }
  attributes {
      environment {
        type = var.env_id
      }
    }
}