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

resource "google_compute_network" "vpc_network_pscep" {
  name = var.vpc_network_name02
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public-Subnetwork-pscep" {
  name = var.subnetwork02
  ip_cidr_range = "10.3.0.0/16"
  region = var.region
  network = google_compute_network.vpc_network_pscep.name
}