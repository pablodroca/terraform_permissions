variable "billing_user_email" {
  description = "Email of the user with billing accounts to be used for project_name"
  type        = string
  default     = "pablo.roca@domain.com"
}

variable "service_account_keys" {
  description = "Service account key file for each project. Service accounts must have owner permissions and it is recommended to name it terraform for tracking purposes"
  type        = map
  default = {
    taller3-user1      = "/home/pablo-roca/.keys/taller3/taller3-user1.json"
    taller3-user2      = "/home/pablo-roca/.keys/taller3/taller3-user2.json"
  }
}

