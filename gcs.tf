resource "google_storage_bucket" "bucket" {
  name     = "${var.project_id}-bucket"
  location = var.region
  project  = var.project_id

  uniform_bucket_level_access = true
  force_destroy               = true
}
