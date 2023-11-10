module "vpc" {
  source = "./modules/vpc"

  vpc_name = "vpc-credpal"
  vpc_cidr = "10.0.0.0/16"
}

module "subnet" {
  source = "./modules/subnet"

  vpc         = module.vpc.vpc_id
  subnet_name = "subnet-credpal-A"
  subnet_cidr = "10.0.1.0/24"
  #subnet_gateway_ip = "10.0.1.1"
  #availability_zone = ""

}

module "cce" {
  source = "./modules/cce"

  #pool_name  = "credpal-nodepool"
  node_name  = "credpal-nodepool"
  cluster_os = "Ubuntu Server 22.04"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id

}