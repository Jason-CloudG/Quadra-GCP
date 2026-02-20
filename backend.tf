terraform {
  backend "gcs" {
    bucket  = "your-tf-state-bucket"
    prefix  = "network/vpc"
  }
}
