terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "google" {
  project      = var.project_id
  access_token = var.access_token

  default_labels = {
    "humanitec"  = "true"
    "hum-app"    = var.app_id
    "hum-env"    = var.env_id
    "hum-res"    = replace(var.res_id, ".", "-")
    "managed-by" = "terraform"
  }
}