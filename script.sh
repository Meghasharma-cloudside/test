#!/usr/bin/bash

terraform -chdir=./api/ init

terraform -chdir=./api/ apply --auto-approve

terraform -chdir=./firewall/ init

terraform -chdir=./firewall/ import google_compute_firewall.defaulta default-allow-rdp

terraform -chdir=./firewall/ import google_compute_firewall.defaultb default-allow-icmp

terraform -chdir=./firewall/ import google_compute_firewall.defaultc default-allow-internal

terraform -chdir=./firewall/ import google_compute_firewall.defaultd default-allow-ssh

terraform -chdir=./firewall/ destroy --auto-approve

terraform -chdir=./vpc/ init

terraform -chdir=./vpc/ import google_compute_network.vpc default

terraform -chdir=./vpc/ destroy --auto-approve


