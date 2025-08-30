variable "cpu"       { type = number, default = 2 }
variable "memory_gb" { type = number, default = 4 }
variable "disk_gb"   { type = number, default = 50 }
variable "public_ip" { type = bool,   default = false }
variable "os"        { type = string, default = "ubuntu-22.04" }
