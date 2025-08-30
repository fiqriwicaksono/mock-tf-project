variable "version"       { type = string, default = "1.28" }
variable "node_count"    { type = number, default = 3 }
variable "instance_type" { type = string, default = "c.medium" }
variable "max_pods"      { type = number, default = 110 }
variable "network_policy_enabled" { type = bool, default = true }
