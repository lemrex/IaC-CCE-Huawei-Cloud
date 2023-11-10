#variable "availability_zone" {
#}

variable "vpc" {
  description = "The VPC that this subnet is associated with"
}

variable "subnet_name" {
  description = "The VPC that this subnet is associated with"
}

variable "subnet_cidr" {
  description = "The VPC that this subnet is associated with"
}

variable "subnet_gateway_ip" {
  description = "The VPC that this subnet is associated with"
  default = "10.0.1.1"
}

/*variable "region" {
  description = "region for deployment"
}*/