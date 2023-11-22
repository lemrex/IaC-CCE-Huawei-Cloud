data "huaweicloud_availability_zones" "myaz" {}

/*data "huaweicloud_enterprise_project" "test" {
  name = "test"
}*/



/*
data "huaweicloud_compute_flavors" "myflavors" {
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  performance_type  = "normal"
  cpu_core_count    = 2
  memory_size       = 4
}*/


resource "huaweicloud_cce_cluster" "cluster" {
  name                   = "credpal"
  flavor_id              = "cce.s1.small"
  vpc_id                 = var.vpc_id
  subnet_id              = var.subnet_id
  enterprise_project_id = "3e7cb44b-4b49-43b5-93df-d78f8a24e2dc"
  container_network_type = "overlay_l2"
}

/*
resource "huaweicloud_cce_node" "node" {
  cluster_id        = huaweicloud_cce_cluster.cluster.id
  name              = var.node_name
  flavor_id         = data.huaweicloud_compute_flavors.myflavors.ids[0]
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  password          = var.password

  root_volume {
    size       = 40
    volumetype = "SATA"
  }
  data_volumes {
    size       = 100
    volumetype = "SATA"
  }
}
*/


resource "huaweicloud_cce_node_pool" "node_pool" {
  cluster_id               = huaweicloud_cce_cluster.cluster.id
  name                     = var.pool_name
  os                       = var.cluster_os
  initial_node_count       = 1
  flavor_id                = "s3.large.4"
  availability_zone        = data.huaweicloud_availability_zones.myaz.names[0]
  password                 = var.password
  scall_enable             = true
  subnet_id                = var.subnet_id
  min_node_count           = 1
  max_node_count           = 3
  scale_down_cooldown_time = 100
  priority                 = 1
  type                     = "vm"

  root_volume {
    size       = 50
    volumetype = "SAS"
  }
  data_volumes {
    size       = 100
    volumetype = "SAS"
  }
}
