module "vnet_sweden_central" {
  source  = "../modules/terraform-azurerm-vnet"
  

  resource_group_name            = "rg-non-prod-vwaninfra-swe"
  vnetwork_name                  = "vnet-non-prod-hub-sweden-central-001"
  location                       = "Sweden Central"
  vnet_address_space             = ["310.41.236.0/2"]  #Need to add 1 more scenario to test vnet assignment with multiple ranges
  firewall_subnet_address_prefix = ["10.41.236.64/26"]
  gateway_subnet_address_prefix  = ["10.41.236.232/29"]
  create_network_watcher         = false
  create_ddos_plan               = false

  subnets = {
    mgnt_subnet = {
      subnet_name           = "snet-management"
      subnet_address_prefix = ["10.41.236.240/29"]
      
    dmz_subnet = {
      subnet_name           = "snet-appgateway"
      subnet_address_prefix = ["10.41.236.248/29"]
      
    pvt_subnet = {
      subnet_name           = "snet-pvt"
      subnet_address_prefix = ["10.41.236.224/29"]
    }
  }
  }
  }
  }


module "vnet_west_europe" {
  source  = "../modules/terraform-azurerm-vnet"
  

  resource_group_name            = "rg-non-prod-coreinfra-euw4"
  vnetwork_name                  = "vnet-non-prod-hub-westeurope-001"
  location                       = "West Europe"
  vnet_address_space             = ["10.41.232.0/23"]
  firewall_subnet_address_prefix = ["10.41.232.64/26"]
  gateway_subnet_address_prefix  = ["10.41.232.232/29"]
  create_network_watcher         = false
  create_ddos_plan               = false

  subnets = {
    mgnt_subnet = {
      subnet_name           = "snet-management"
      subnet_address_prefix = ["10.41.232.240/29"]
      
    dmz_subnet = {
      subnet_name           = "snet-appgateway"
      subnet_address_prefix = ["10.41.232.248/29"]
      
    pvt_subnet = {
      subnet_name           = "snet-pvt"
      subnet_address_prefix = ["10.41.232.224/29"]
      
    }
  }
}
}
}
