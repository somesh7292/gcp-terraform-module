locals {
    project_id = "${var.project_initial_name}-${random_id.project_suffix.hex}"
}

resource "random_id" "project_suffix" {
    byte_length = 3
}

resource "google_project" "service_project" {
    name = var.project_initial_name
    project_id = local.project_id
    billing_account = var.billing_account
    auto_create_network = "false"
    deletion_policy = "DELETE"
}