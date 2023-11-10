terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = ">= 1.36.0"
    }
  }
}
/*
# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  region     = "af-south-1"
  access_key = "AWMHUOI9H7AU6HWI0DZR"
  secret_key = "S7GBK4BehZ0p4lHiHVB1LvdgFBGjqhK0Uak8HnWw"
}
*/

provider "huaweicloud" {
  shared_config_file = "C:\\Users\\e84305251\\.hcloud\\config.json"
  
}