#!/bin/bash

# Initialize and apply Terraform configuration
cd ../terraform
terraform init
terraform apply -auto-approve

# Update kubeconfig
aws eks --region us-west-2 update-kubeconfig --name ci-cd-cluster

# Deploy applications
cd ../scripts
./deploy_apps.sh
