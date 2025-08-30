terraform {
  required_providers { null = { source = "hashicorp/null", version = ">= 3.2.2" } }
}

resource "null_resource" "vm" {
  triggers = {
    cpu       = tostring(var.cpu)
    memory_gb = tostring(var.memory_gb)
    disk_gb   = tostring(var.disk_gb)
    public_ip = tostring(var.public_ip)
    os        = var.os
  }
}

output "vm_summary" {
  value = {
    cpu       = var.cpu
    memory_gb = var.memory_gb
    disk_gb   = var.disk_gb
    public_ip = var.public_ip
    os        = var.os
  }
}
