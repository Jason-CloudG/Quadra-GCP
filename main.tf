resource "google_compute_network" "custom_vpc" {
  name                    = "custom-vpc-tf"
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  project                 = var.project_id
}

resource "google_compute_subnetwork" "custom_subnet" {
  name          = "custom-subnet-tf"
  ip_cidr_range = "10.10.0.0/24"
  region        = var.region
  network       = google_compute_network.custom_vpc.id
  project       = var.project_id
}
