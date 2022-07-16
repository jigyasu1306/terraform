provider "google" {
  project = var.project_name
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance
  machine_type = "e2-standard-2"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    # A default network is created for all GCP projects
    network = var.vpc_network_name
  }

  service_account {
    email = var.service_account
    scopes = ["cloud-platform"]
  }

}
