
variable "vpc_id" {
  description = "vpc ID"
}


variable "subnet_id" {
  description = "subnet ID"
}

variable "password" {
  default = "#Qwerty123"
}

variable "pool_name"{
  description = "node pool name"
}

variable "cluster_os" {
  description = "os image for nodes"
}

variable "node_name"{
  description = "node pool name"
}