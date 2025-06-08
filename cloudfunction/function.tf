locals {
  function_zip_path = var.function_zip_path
  zip_hash          = filesha256(var.function_zip_path)
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.project_id}-${var.location}-gcf-source"  # Every bucket name must be globally unique
  project = var.project_id
  location = var.location
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name   = "function-source-${local.zip_hash}.zip"
  bucket = google_storage_bucket.bucket.name
  source = local.function_zip_path # Add path to the zipped function source code
}

resource "google_cloudfunctions2_function" "function" {
  name = var.function_name
  location = var.location
  description = var.description
  project = var.project_id
  build_config {
    runtime = var.runtime
    entry_point = var.entry_point  # Set the entry point 
    source {
      storage_source {
        bucket = google_storage_bucket.bucket.name
        object = google_storage_bucket_object.object.name
      }
    }
  }

  service_config {
    max_instance_count  = var.max_instance_count
    available_memory    = var.available_memory
    timeout_seconds     = var.timeout_seconds
    ingress_settings   = var.ingress_settings
    service_account_email = var.service_account_email
    secret_environment_variables {
      project_id = var.project_id
      key        = var.key
      secret     = var.secret_id
      version    = "latest"
    }
    environment_variables = {
      SECRET_KEY_TRIGGER = var.secret_key_trigger
    }
  }
}