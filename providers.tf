provider "google" {
  project = var.project_id
  region  = var.region
  credentials = base64decode(var.gcp_credentials)
}
