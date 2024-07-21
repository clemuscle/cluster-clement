output "cluster_id" {
  description = "The ID of the EKS cluster."
  value       = module.eks.cluster_id
}

output "cluster_arn" {
  description = "The ARN of the EKS cluster."
  value       = module.eks.cluster_arn
}

output "cluster_endpoint" {
  description = "The endpoint for your EKS Kubernetes API."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "The security group ID attached to the EKS cluster."
  value       = module.eks.cluster_security_group_id
}

output "kubeconfig" {
  description = "kubeconfig file contents for connecting to the cluster using kubectl."
  value       = module.eks.kubeconfig
}
