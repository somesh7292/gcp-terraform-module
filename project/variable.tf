variable "project_initial_name" {
    description = "Project name (without random suffix)"
    type = string
}

variable "region" {
    description = "GCP region name"
    type = string
    default = "us-central1"
}

variable "billing_account" {
    description = "Id of associated billing account"
    type = string
}