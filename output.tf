output "folder_id" {
  description = "The ID of the created GCP folder"
  value       = google_folder.example_folder.name
}

output "project_id" {
  description = "The ID of the created GCP project"
  value       = google_project.example_project.project_id
}

output "project_number" {
  description = "The project number of the created GCP project"
  value       = google_project.example_project.number
}
