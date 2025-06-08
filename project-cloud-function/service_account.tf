resource "google_service_account" "cloud-function" {
    account_id = "cloud-function"
    display_name = "cloud-function"
    project = var.project_id
}

resource "google_project_iam_member" "secret_manager" {
  project = var.project_id
  role    = "roles/secretmanager.secretAccessor"  # Example role
  member  = "serviceAccount:${google_service_account.cloud-function.email}"
}