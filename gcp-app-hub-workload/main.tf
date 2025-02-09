locals {
  application_id = "${var.app_id}-${var.env_id}"
  workload_id    = split(".", var.res_id)[1]
  prefix_uri     = "//container.googleapis.com/projects/${var.gke_project_number}/locations/${var.region}/clusters/${var.gke_name}/k8s/namespaces/${var.namespace}"
  workload_uri   = "${local.prefix_uri}/apps/deployments/${local.workload_id}"
  service_uri    = "${local.prefix_uri}/services/${local.workload_id}"
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
  attributes {
    environment {
      type = upper(var.env_type)
    }
  }
}
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/apphub_discovered_service
data "google_apphub_discovered_service" "apphub_service" {
  count       = var.create_service ? 1 : 0
  location    = var.region
  service_uri = local.service_uri
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/apphub_service
resource "google_apphub_service" "apphub_service" {
  count              = var.create_service ? 1 : 0
  location           = var.region
  application_id     = data.google_apphub_application.apphub_app.application_id
  service_id         = local.workload_id
  discovered_service = data.google_apphub_discovered_service.apphub_service[count.index].name
  attributes {
    environment {
      type = upper(var.env_type)
    }
  }
}