output "terraform_account_email" {
  value = google_service_account.terraform.email
}

output "project_id" {
  value = google_project.service_project.project_id
}

output "project_name" {
  value = google_project.service_project.number
}