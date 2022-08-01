# Secure GKE cluster using Terraform

## Project's Description

- Google Cloud Platform infrastructure supporting Jenkins server and simple application deployment


## Requirments

1. Linux based, Windows or Mac os
2. Docker
3. GCP project with billing account
4. Google cloud cli (gcloud) installed on your local machine [ installation steps ](https://cloud.google.com/sdk/docs/install)
5. Terraform v1.2.6 and Google terraform provider v4.30.0


## Infrastructure overview

1. a vpc
2. two subnets named managed and restricted in europe-west2 region
3. a firewall allowing Google IAP ip range to ssh the bastion server
4. cloud NAT for my private resources to access the internet
5. private Google Kubernetes Engine cluster called playground-gke
6. Google Container node pool called playground-gke-nodes


## Steps

- authenticated the gcloud cli on my machine in order to use it with terraform
- created the infrastructure code
- run `terraform apply` to run build the infrastructure


## Author

[Alaa A. Amin](https://www.linkedin.com/in/alaaamin-swe/)
