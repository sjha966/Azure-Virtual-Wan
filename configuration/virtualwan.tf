module "vwan_with_vhub" {
  source                         = "../modules/virtualwan"
  resource_group_name            = "rg-non-prod-vwaninfra-swe"
  location                       = "Sweden Central"
  virtual_wan_name               = "vwan-non-prod-infra-swc-001"
  disable_vpn_encryption         = false
  allow_branch_to_branch_traffic = true
  allow_vnet_to_vnet_traffic     = true
  type                           = "Standard"
  virtual_wan_tags = {
    environment = "non-prod"
    deployment  = "terraform"
  }
  virtual_hubs = {
    swe-vhub = {
      name           = "vhub-non-prod-infra-swc-001"
      location       = "Sweden Central"
      resource_group = "rg-non-prod-vwaninfra-swe"
      address_prefix = "10.41.216.0/21"
      tags = {
        location = "Sweden Central"
      }
    }
    euw4-vhub = {
      name           = "vhub-non-prod-infra-euw4-001"
      location       = "West Europe"
      resource_group = "rg-non-prod-coreinfra-euw4"
      address_prefix = "10.41.224.0/21"
      tags = {
        location = "West Europe"
      }
    }
  }
}
