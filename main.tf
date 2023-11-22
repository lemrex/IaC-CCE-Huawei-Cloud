module "vpc" {
  source = "./modules/vpc"

  vpc_name = "vpc-tf-ralf"
  vpc_cidr = "10.0.0.0/16"
}

module "subnet" {
  source = "./modules/subnet"

  vpc         = module.vpc.vpc_id
  subnet_name = "subnet-tf-ralf"
  subnet_cidr = "10.0.1.0/24"
  #subnet_gateway_ip = "10.0.1.1"
  #availability_zone = ""

}

module "cce" {
  source = "./modules/cce"

  pool_name  = "tf-nodepool-ralf"
  #node_name  = "credpal-nodepool"
  cluster_os = "CentOS 7.6"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id

}