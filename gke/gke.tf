resource "google_container_cluster" "gke" {
  name     = local.cluster_name
  location = var.region

  network    = google_compute_network.vpc.id
  subnetwork = google_compute_subnetwork.subnet.id

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }
}

resource "google_container_node_pool" "custom" {
  name     = local.node_pool_name
  location = var.region
  cluster  = google_container_cluster.gke.name


  autoscaling {
    total_min_node_count = var.min_node_count
    total_max_node_count = var.max_node_count
  }

  node_config {
    machine_type = var.machine_type
    preemptible  = var.preemptible
    disk_size_gb = var.disk_size_gb

    taint{
      key    = "taint"
      value  = "application"
      effect = "PREFER_NO_SCHEDULE"

    }
  }
}
