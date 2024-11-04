provider "google" {
  credentials = file(var.credentials_path)
  region      = var.region
}


resource "google_folder" "example_folder" {
  count        = var.create_folder ? 1 : 0
  display_name = var.folder_name
  parent       = "organizations/${var.organization_id}"
}

resource "random_id" "project_suffix" {
  byte_length = 2
}


resource "google_project" "example_project" {
  name           = var.project_name
  project_id     = "${var.project_name}-${random_id.project_suffix.hex}"
  folder_id      = var.create_folder ? google_folder.example_folder[0].name : null
  billing_account = var.billing_account
}

resource "google_project_service" "project_services" {
  for_each         = toset(var.enabled_services)
  project          = google_project.example_project.project_id
  service          = each.value
  disable_on_destroy = false
}


