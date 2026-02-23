resource "google_container_cluster" "gke" {
  name     = "demo-gke"
  location = var.region
  project  = var.project_id

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.custom_vpc.id
  subnetwork = google_compute_subnetwork.custom_subnet.id
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-pool"
  cluster    = google_container_cluster.gke.name
  location   = var.region
  node_count = 1
  project    = var.project_id

  node_config {
    machine_type = "e2-medium"
  }
}
