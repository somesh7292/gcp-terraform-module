resource "google_project_service" "cloud_function" {
    project = var.project_id
    service = "cloudfunctions.googleapis.com"
    disable_on_destroy = false
}

resource "google_project_service" "cloud_build" {
    project = var.project_id
    service = "cloudbuild.googleapis.com"
    disable_on_destroy = false
}

resource "google_project_service" "cloudrun" {
    project = var.project_id
    service = "run.googleapis.com"
    disable_on_destroy = false
}

resource "google_project_service" "iap" {
    project = var.project_id
    service = "iap.googleapis.com"
    disable_on_destroy = false
}