resource "google_compute_network" "vpc_network01" {
  name = var.vpc_network_name
  auto_create_subnetworks = "false"
}
resource "google_compute_subnetwork" "subnetwork01" {
  name = var.subnetwork
  ip_cidr_range = "10.2.0.0/16"
  region = var.region
  network = var.vpc_network_name
  private_ip_google_access = "false"
}

resource "google_compute_network" "vpc_network02" {
  name = var.vpc_network_name02
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnetwork02" {
  name = var.subnetwork02
  ip_cidr_range = "10.3.0.0/16"
  region = var.region
  network = var.vpc_network_name02
  private_ip_google_access = "true"
}
