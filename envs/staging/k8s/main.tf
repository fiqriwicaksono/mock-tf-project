terraform {
  required_version = ">= 1.6.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

module "k8s_cluster" {
  source                 = "../../../modules/k8s"
  k8s_version            = var.k8s_version
  node_count             = var.node_count
  instance_type          = var.instance_type
  max_pods               = var.max_pods
  network_policy_enabled = var.network_policy_enabled
}

output "env_summary" {
  value = {
    env     = var.env
    cluster = module.k8s_cluster.cluster_summary
  }
}