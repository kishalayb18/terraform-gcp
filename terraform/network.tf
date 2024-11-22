resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_subnet" {
  count = length(var.public_subnet_cidr_ranges)
  name                     = "${var.subnet_names[1]}-${var.region}-${count.index}"
  region                   = var.region
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = var.public_subnet_cidr_ranges[count.index]
  private_ip_google_access = false
}

resource "google_compute_subnetwork" "private_subnet" {
  count = length(var.private_subnet_cidr_ranges)
  name                     = "${var.subnet_names[1]}-${var.region}-${count.index}"
  region                   = var.region
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = var.private_subnet_cidr_ranges[count.index]
  private_ip_google_access = true
}
