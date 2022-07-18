resource "google_compute_network" "vpc_network" {
  name = var.vpc_network_name
  auto_create_subnetworks = "true"
}

resource "google_compute_instance" "vm_instance" {
  name = "new-terraform instance"
  machine_type = e2-standard-2
  zone = var.zone
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = google_compute_instance.vpc_network.name
  }
  
}