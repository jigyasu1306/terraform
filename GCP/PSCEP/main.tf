resource "google_compute_firewall" "rules" {
  name = var.firewall
  network = var.vpc_network_name02
  source_ranges = var.ip_firewall_rule
  allow {
    protocol = "tcp"
    ports = ["80", "8080", "22"]
  }
}

resource "google_compute_address" "static_ip" {
  name = "static-ip"
  region = "${var.region}"
  address = "192.168.255.250"
  network = var.vpc_network_name02
}

resource "google_compute_forwarding_rule" "google_compute_forwarding_rule" {
  name = var.forwarding_rules
  region = var.region
  allow_global_access = true
  network = var.vpc_network_name02
  subnetwork = var.subnetwork2
  target-google-apis-bundle = all-apis
}

resource "google_compute_router_nat" "cluster-nat" {
  name = var.nat_name
  router = "${google_compute_router.router.name}"
  region = "${google_compute_router.router.region}"
  nat_ip_allocate_option= "MANUAL_ONLY"
  nat_ips = ["${google_compute_address.static_ip.self_link}"]
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name = "${google_compute_subnetwork.service.self_link}"
    source_ip_ranges_to_nat = ["ALL PRIVATE GOOGLE SERVICES"]
  }
}



