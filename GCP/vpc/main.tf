resource "google_compute_network" "vpc_network" {
name = var.vpc_network_name
auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public-subnetwork" {
name = var.subnetwork
ip_cidr_range = "10.2.0.0/16"
region = var.region
network = google_compute_network.vpc_network.name
}