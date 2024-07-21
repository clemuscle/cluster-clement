variable "cluster_name" {
  description = "The name of the cluster."
  type        = string
}

variable "oidc_provider" {
  description = "The OIDC provider URL from EKS."
  type        = string
}
