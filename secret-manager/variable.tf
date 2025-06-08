variable "secret_id" {
  description = "secret id"
  type = string
}

variable "secret_data" {
  description = "secret value"
  type = string
  sensitive = true
}

variable "region" {
  description = "default region"
  type = string
  default = "us-central1"
}

variable "project_id" {
  description = "Project id"
  type = string
}