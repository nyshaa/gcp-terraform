module "gcp_project_folder" {
  source           = "git::https://github.com/nyshaa/gcp-terraform/gcp_project_folder_module.git"
  #credentials_path = "<path_to_your_service_account_key>.json"
  #region           = "us-central1"
  #organization_id  = "<your_organization_id>" #needed if create folder
  #create_folder    = True
  #folder_name      = "My_Terraform_Folder"
  project_name     = "my-terraform-project"
  billing_account  = "<your_billing_account_id>"
  #enabled_services = ["compute.googleapis.com", "storage.googleapis.com"]
}
