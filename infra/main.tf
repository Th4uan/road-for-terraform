terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region = var.region
  zone = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name = var.instance_name
  machine_type = var.instance_type

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = google_cloud_compute_network.vpc_network.name
    access_config {}
  }
}


resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

output "IP_Public" {
  value = google_compute_instance.vm_instance.network_interface[0].network_ip
}