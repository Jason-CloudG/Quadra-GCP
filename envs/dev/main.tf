resource "google_storage_bucket" "tf_test" {
  name     = "${var.project_id}-tf-test-bucket"
  location = var.region
}
