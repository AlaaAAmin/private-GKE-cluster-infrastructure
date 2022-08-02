resource "google_compute_firewall" "ssh-rule" {
  project   = var.project_id
  name      = "allow-ssh-traffic"
  network   = module.network.vpc_name
  direction = "INGRESS" # Inbound traffic
  priority  = "1000"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["bastion", "builder"]
}
