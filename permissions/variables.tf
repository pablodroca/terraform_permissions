variable "project_name" {
  description = "Name of the project to setup"
  type        = string
}

variable "billing_user_email" {
  description = "Email of the user with billing accounts to be used for roject_name"
  type        = string
}

variable "user_email" {
  description = "Email of the user to configure with the proper permissions within project_name"
  type        = string
}

variable "service_account_key" {
  description = "Service account key file for project_name. Service accounts must have owner permissions and it is recommended to name it terraform for tracking purposes"
  type        = string
}

