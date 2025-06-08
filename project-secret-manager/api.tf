resource "google_project_service" "cloud_function" {
    project = var.project_id
    service = "secretmanager.googleapis.com"
    disable_on_destroy = false
}
