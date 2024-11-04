provider "google" {
  region      = "asia-southeast1"
}


module "gcp_project_folder" {
  source            = "git::https://github.com/nyshaa/gcp-terraform.git//gcp_project_folder_module?ref=main"
  #credentials_path = "<path_to_your_service_account_key>.json"
  #region           = "us-central1"
  organization_id  = "858460951704" #needed if create folder
  folder_name      = "My_Terraform_Folder"
  project_name      = "my-terraform-project"
  billing_account   = "01DDD1-D1656A-D35E04"
  #enabled_services = ["compute.googleapis.com", "storage.googleapis.com"]
}                                                                 
