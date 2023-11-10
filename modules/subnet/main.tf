data "huaweicloud_availability_zones" "myaz" {}

resource "huaweicloud_vpc_subnet" "subnet" { 
  name              = var.subnet_name
  cidr              = var.subnet_cidr
  gateway_ip        = var.subnet_gateway_ip
  vpc_id            = var.vpc
  primary_dns       = "100.125.1.250"
  secondary_dns     = "100.125.21.250"
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
}