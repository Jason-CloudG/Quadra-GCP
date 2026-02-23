resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "demo-repo-tfm"
  format        = "DOCKER"
  project       = var.project_id
}
