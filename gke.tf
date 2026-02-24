resource "google_container_cluster" "gke" {
  count    = var.enable_gke ? 1:0
  name     = "demo-gke"
  location = var.region
  project  = var.project_id

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.custom_vpc.id
  subnetwork = google_compute_subnetwork.custom_subnet.id
}

resource "google_container_node_pool" "primary_nodes" {
  count      = var.enable_gke ? 1:0
  name       = "primary-pool"
  cluster    = google_container_cluster.gke[0].name
  location   = var.region
  node_count = 1
  project    = var.project_id

  node_config {
    machine_type = "e2-medium"
  }
}
