output "secret_id" {
  value = google_secret_manager_secret.secret.secret_id
}

output "secret_version_id" {
  value = google_secret_manager_secret_version.secret_version.id
}