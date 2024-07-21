provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}

module "irsa" {
  source = "./modules/irsa"
  cluster_name = module.eks.cluster_name
  oidc_provider = module.eks.oidc_provider
}
