resource "google_project_iam_member" "vertex_ai_members" {
  for_each = var.principals

  project = var.project_id
  role    = "roles/aiplatform.admin"
  member  = each.key
}