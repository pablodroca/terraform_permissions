// Configure the Google Cloud provider
provider "google" {
 credentials = file(var.service_account_keys[var.project_name])
 project     = var.project_name
 region      = "us-east1"
}

module "permissions" {
  source = "../permissions"
  project_name = var.project_name
  user_email = var.user_email
  billing_user_email = var.billing_user_email
}

