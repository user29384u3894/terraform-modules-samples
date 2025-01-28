resource "google_storage_bucket_iam_member" "iam_member" {
  for_each = var.principals

  bucket = var.gcs_bucket_name
  role   = "roles/storage.objectAdmin"
  member = each.key
}