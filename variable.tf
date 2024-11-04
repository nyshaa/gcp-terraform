variable "credentials_path" {
  description = "Path to the GCP credentials JSON file"
  type        = string
}


variable "region" {
  description = "GCP region for the resources"
  type        = string
  default     = "asia-southeast1"
}

variable "organization_id" {
  description = "Organization ID in GCP, required if create_folder is true"
  type        = string
  default     = ""
}

variable "create_folder" {
  description = "Whether to create a folder for the project (requires organization_id)"
  type        = bool
  default     = false
}

variable "folder_name" {
  description = "The display name of the GCP folder"
  type        = string
}

variable "project_name" {
  description = "The name of the GCP project"
  type        = string
}

variable "billing_account" {
  description = "Billing account ID for the GCP project"
  type        = string
}

variable "enabled_services" {
  description = "List of services to enable in the project"
  type        = list(string)
  default     = ["compute.googleapis.com", "storage.googleapis.com"]
}
