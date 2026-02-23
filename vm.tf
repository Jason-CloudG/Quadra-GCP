resource "google_compute_instance" "vm" {
  name         = "demo-vm"
  machine_type = "e2-medium"
  zone         = "${var.region}-a"
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.custom_subnet.id
    access_config {}
  }
}
