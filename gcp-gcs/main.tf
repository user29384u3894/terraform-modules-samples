resource "random_string" "bucket_name" {
    length  = 10
    special = false
    lower   = true
    upper   = false
}

resource "google_storage_bucket" "bucket" {
    project                     = var.project_id
    name                        = random_string.bucket_name.result
    location                    = var.region
    uniform_bucket_level_access = true
    force_destroy               = true
}