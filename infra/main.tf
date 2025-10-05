terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
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

  metadata = {
    enable-oslogin = "TRUE"
  }
}

resource "google_project_iam_member" "os_acess_login" {
  for_each = toset(var.developers)

  project = var.gcp_project_id

  role   = "roles/compute.osLogin"
  member = "user:${each.value}"

}
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
