terraform {
  backend "gcs" {
    bucket  = "tf-staging-bucket7654"
    prefix  = "project-level"
  }
}
