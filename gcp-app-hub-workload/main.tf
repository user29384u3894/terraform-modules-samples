locals {
  application_id = "${var.app_id}-${var.env_id}"
  workload_id    = split(".", var.res_id)[1]
  workload_uri   = "//container.googleapis.com/projects/${var.gke_project_number}/locations/${var.region}/clusters/${var.gke_name}/k8s/namespaces/${var.namespace}/apps/deployments/${local.workload_id}"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_application
data "google_apphub_application" "apphub_app" {
  project        = var.project_id
  application_id = local.application_id
  location       = var.region
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_discovered_workload
data "google_apphub_discovered_workload" "apphub_workload" {
  location     = var.region
  workload_uri = local.workload_uri
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/apphub_workload
resource "google_apphub_workload" "apphub_workload" {
  location            = var.region
  application_id      = data.google_apphub_application.apphub_app.application_id
  workload_id         = local.workload_id
  discovered_workload = data.google_apphub_discovered_workload.apphub_workload.name
}