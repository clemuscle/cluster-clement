variable "region" {
  description = "AWS region to launch servers."
  type        = string
  default     = "eu-west-3"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.29"
}
