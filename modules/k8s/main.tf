terraform {
  required_providers { null = { source = "hashicorp/null", version = ">= 3.2.2" } }
}

resource "null_resource" "cluster" {
  triggers = {
    k8s_version        = var.k8s_version
    node_count     = tostring(var.node_count)
    instance_type  = var.instance_type
    max_pods       = tostring(var.max_pods)
    network_policy = tostring(var.network_policy_enabled)
  }
}

output "cluster_summary" {
  value = {
    k8s_version        = var.k8s_version
    node_count     = var.node_count
    instance_type  = var.instance_type
    max_pods       = var.max_pods
    network_policy = var.network_policy_enabled
  }
}
