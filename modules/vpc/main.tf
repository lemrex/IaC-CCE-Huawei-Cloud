resource "huaweicloud_vpc" "vpc" {
  name = var.vpc_name
  cidr = var.vpc_cidr
  enterprise_project_id = "3e7cb44b-4b49-43b5-93df-d78f8a24e2dc"
}
