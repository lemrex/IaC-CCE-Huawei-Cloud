terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.36.0"
    }
  }
}

# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  region     = "af-south-1"
  access_key = "6HWI0DZR"
  secret_key = "S7ak8HnWw"
}


/*
provider "huaweicloud" {
  shared_config_file = "C:\\Users\\e84305251\\.hcloud\\config.json"
  
}
*/
