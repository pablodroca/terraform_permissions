// Configure the Google Cloud provider
provider "google" {
 credentials = file(var.service_account_key)
 project     = var.project_name
 region      = "us-east1"
}

resource "google_project_iam_member" "credits-billing" {
  project = var.project_name
  role    = "roles/billing.projectManager"
  member  = "user:${var.billing_user_email}"
}

resource "google_project_iam_member" "credits-viewer" {
  project = var.project_name
  role    = "roles/viewer"
  member  = "user:${var.billing_user_email}"
}

resource "google_project_iam_member" "project-cloud-build" {
  project = var.project_name
  role    = "roles/cloudbuild.builds.editor"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-cloud-debugger-user" {
  project = var.project_name
  role    = "roles/clouddebugger.user"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-cloud-debugger-agent" {
  project = var.project_name
  role    = "roles/clouddebugger.agent"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-cloud-functions" {
  project = var.project_name
  role    = "roles/cloudfunctions.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-cloud-tasks" {
  project = var.project_name
  role    = "roles/cloudtasks.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-cloud-trace" {
  project = var.project_name
  role    = "roles/cloudtrace.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-compute-viewer" {
  project = var.project_name
  role    = "roles/compute.viewer"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-datastore" {
  project = var.project_name
  role    = "roles/datastore.owner"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-firebase-database" {
  project = var.project_name
  role    = "roles/firebasedatabase.admin"
  member  = "user:${var.user_email}"
}
resource "google_project_iam_member" "project-firebase-storage" {
  project = var.project_name
  role    = "roles/firebasestorage.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-iam-roleviewer" {
  project = var.project_name
  role    = "roles/iam.roleViewer"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-iam-serviceaccount" {
  project = var.project_name
  role    = "roles/iam.serviceAccountAdmin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-iam-serviceaccountkey" {
  project = var.project_name
  role    = "roles/iam.serviceAccountKeyAdmin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-iam-serviceaccountuser" {
  project = var.project_name
  role    = "roles/iam.serviceAccountUser"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-logging" {
  project = var.project_name
  role    = "roles/logging.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-memcache" {
  project = var.project_name
  role    = "roles/memcache.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-pubsub" {
  project = var.project_name
  role    = "roles/pubsub.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-pubsublite" {
  project = var.project_name
  role    = "roles/pubsublite.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-redis" {
  project = var.project_name
  role    = "roles/redis.viewer"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-serviceusage" {
  project = var.project_name
  role    = "roles/serviceusage.serviceUsageAdmin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-storage" {
  project = var.project_name
  role    = "roles/storage.admin"
  member  = "user:${var.user_email}"
}

resource "google_project_iam_member" "project-viewer" {
  project = var.project_name
  role    = "roles/viewer"
  member  = "user:${var.user_email}"
}

