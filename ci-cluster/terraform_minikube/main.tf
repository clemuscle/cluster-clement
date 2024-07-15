provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "null_resource" "minikube" {
  provisioner "local-exec" {
    command = "minikube start --driver=docker"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "minikube delete"
  }
}

output "kubeconfig" {
  value = "~/.kube/config"
}

output "cluster_ip" {
  value = "minikube ip"
}
