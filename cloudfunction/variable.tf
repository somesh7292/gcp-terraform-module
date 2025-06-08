variable "project_id" {
  description = "Project id"
  type = string
}

variable "function_zip_path" {
  description = "Path of zip file for cloud function"
  type = string
}

variable "location" {
  description = "default location"
  type = string
  default = "us-central1"
}

variable "description" {
  description = "Description of the cloud function"
  type = string
}

variable "function_name" {
  description = "Name of the cloud function"
  type = string
}

variable "runtime" {
  description = "Runtime of cloud function"
  type = string
}

variable "entry_point" {
  description = "Entry point of cloud function"
  type = string
}

variable "max_instance_count" {
  description = "Maximum cloud function instance count"
  type = number
}

variable "available_memory" {
  description = "Available memory for cloud function"
  type = string
}

variable "timeout_seconds" {
  description = "Timeout for cloud function"
  type = string
}

variable "ingress_settings" {
  description = "Ingress setting for cloud function"
  type = string
}

variable "key" {
  description = "Name of the environment variable."
  type = string
}

variable "secret_id" {
  description = "Name of the secret in secret manager"
  type = string
}

variable "secret_key_trigger" {
  description = "Version of a secret"
}