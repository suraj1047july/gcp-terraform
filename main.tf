terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "project-c20c8aac-20c5-4e25-8b9"
  region  = "asia-south2"
  zone    = "asia-south2-a"
}

# Create a Compute Instance
#resource "google_compute_instance" "vm_instance" {
# name         = "terraform-gcp-vm"
 # machine_type = "e2-micro" # Free-tier eligible
  #zone         = "asia-south2-a"

  #boot_disk {
    #initialize_params {
     # image = "debian-cloud/debian-11"
    #}
  #}

  #network_interface {
    # This attaches the VM to the "default" VPC network
   # network = "default"

    # Access config block allows the VM to have a public IP
    #access_config {
    #}
  #}

  # metadata = {
    #foo = "bar"
  #}

  tags = ["web-server", "terraform"]
}
