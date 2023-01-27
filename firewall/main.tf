resource "google_compute_firewall" "defaulta" {
  name    = "default-allow-rdp"
  network = "default"
  allow {
    protocol = "tcp"
  }
  }

resource "google_compute_firewall" "defaultb" {
  name    = "default-allow-icmp"
  network = "default"
  allow {
    protocol = "icmp"
  }
  }

resource "google_compute_firewall" "defaultc" {
  name    = "default-allow-custom"
  network = "default"
  allow {
    protocol = "all"
  }
  }
  
resource "google_compute_firewall" "default-testd" {
  name    = "default-allow-ssh"
  network = "default"
  allow {
    protocol = "tcp"
  }
  }
