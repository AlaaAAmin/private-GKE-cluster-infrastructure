resource "google_compute_subnetwork" "managed-subnet" {
  name                     = "management-subnet"
  ip_cidr_range            = var.managed_subnet_CIDR
  region                   = var.managed_subnet_region
  network                  = google_compute_network.plaground-vpc.id
  description              = "management subnet for hosting bastion server"
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "restricted-subnet" {
  name                     = "restricted-subnet"
  ip_cidr_range            = var.restricted_subnet_CIDR
  region                   = var.restricted_subnet_region
  network                  = google_compute_network.plaground-vpc.id
  description              = "restricted subnet for the private gke cluster"
  private_ip_google_access = true
}
