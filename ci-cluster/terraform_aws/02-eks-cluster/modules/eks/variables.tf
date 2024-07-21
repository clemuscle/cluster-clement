variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "test"
}

variable "vpc_id" {
  description = "The VPC where the EKS cluster and nodes will be created."
  type        = string
}

variable "subnet_ids" {
  description = "The subnets where the EKS nodes will be created."
  type        = list(string)
}
