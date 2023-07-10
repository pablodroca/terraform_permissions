module "taller3-user1" {
  source = "./permissions"
  user_email = "user1@fi.uba.ar"
  project_name = "taller3-user1"
  billing_user_email = var.billing_user_email
  service_account_key = var.service_account_keys["taller3-user1"]
}
