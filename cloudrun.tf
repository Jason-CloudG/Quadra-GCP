resource "google_cloud_run_v2_service" "cloudrun" {
  name     = "demo-service"
  location = var.region
  project  = var.project_id

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
    }
  }
}
