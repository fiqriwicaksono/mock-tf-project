terraform { required_version = ">= 1.6.0" }

provider "null" {}

module "vm" {
  source     = "../../modules/vm"
  cpu        = var.cpu
  memory_gb  = var.memory_gb
  disk_gb    = var.disk_gb
  public_ip  = var.public_ip
  os         = var.os
}

output "env_summary" {
  value = {
    env = var.env
    vm  = module.vm.vm_summary
  }
}
