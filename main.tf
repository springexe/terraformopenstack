terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  password    = "802b129bde644feb"
  auth_url    = "http://10.0.1.217:5000/v3"
  region      = "RegionOne"
}

# Create a web server
resource "openstack_compute_instance_v2" "test-server" {
  name = "basic"
  image_id = "afd54826-8ce1-467e-952d-2e95ab8f55ff"
  flavor_id = "77e14ca1-1633-4088-b9ed-ced20a74c9ee"
  security_groups = ["default"]
}