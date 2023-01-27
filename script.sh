#!/usr/bin/bash

terraform -chdir=./api/ init

terraform -chdir=./api/ apply --auto-approve

terraform -chdir=./firewall/ init

terraform -chdir=./firewall/ import google_compute_firewall.meg-test meg-test-allow-rdp

terraform -chdir=./firewall/ import google_compute_firewall.meg-test meg-test-allow-icmp

terraform -chdir=./firewall/ import google_compute_firewall.meg-test meg-test-allow-inetrnal

terraform -chdir=./firewall/ import google_compute_firewall.meg-test meg-test-allow-ssh

terraform -chdir=./firewall/ destroy --auto-approve

terraform -chdir=./subnet/ init

terraform -chdir=./subnet/ import google_compute_subnetwork.sub1 us-central1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub2 europe-west1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub3 us-west1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub4 asia-east1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub5 us-east1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub6 asia-northeast1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub7 asia-southeast1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub8 us-east4/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub9 australia-southeast1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub10 europe-west2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub11 europe-west3/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub12 southamerica-east1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub13 asia-south1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub14 northamerica-northeast1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub15 europe-west4/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub16 europe-north1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub17 us-west2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub18 asia-east2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub19 europe-west6/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub20 asia-northeast2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub21 asia-northeast3/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub22 us-west3/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub23 us-west4/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub24 asia-southeast2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub25 europe-central2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub26 northamerica-northeast2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub27 asia-south2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub28 australia-southeast2/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub29 southamerica-west1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub30 us-east7/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub31 europe-west8/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub32 europe-west9/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub33 us-east5/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub34 europe-southwest1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub35 us-south1/meg-test

terraform -chdir=./subnet/ import google_compute_subnetwork.sub36 me-west1/meg-test

terraform -chdir=./subnet/ destroy --auto-approve

terraform -chdir=./vpc/ init

terraform -chdir=./vpc/ import google_compute_network.vpc meg-test

terraform -chdir=./vpc/ destroy --auto-approve