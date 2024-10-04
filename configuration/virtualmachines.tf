module "windowsservers" {
  source              = "../modules/terraform-azurerm-compute"
  resource_group_name = "rg-non-prod-vwaninfra-swe"
  is_windows_image    = true
  vm_hostname         = "mywinvm" // line can be removed if only one VM module per resource group
  admin_password      = "ComplxP@ssw0rd!"
  vm_os_simple        = "WindowsServer"
  #public_ip_dns       = ["winsimplevmips"] // change to a unique name per datacenter region
  vnet_subnet_id      = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualNetworks/vnet-non-prod-hub-sweden-central-001/subnets/snet-management"


  #depends_on = [rg-non-prod-vwaninfra-swe]
}

module "windowsserverswesteurope" {
  source              = "../modules/terraform-azurerm-compute"
  resource_group_name = "rg-non-prod-coreinfra-euw4"
  is_windows_image    = true
  vm_hostname         = "mywinvm" // line can be removed if only one VM module per resource group
  admin_password      = "ComplxP@ssw0rd!"
  vm_os_simple        = "WindowsServer"
  #public_ip_dns       = ["winsimplevmips"] // change to a unique name per datacenter region
  vnet_subnet_id      = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/virtualNetworks/vnet-non-prod-hub-westeurope-001/subnets/snet-management"


  #depends_on = [rg-non-prod-coreinfra-euw4]
}

#output "windows_vm_public_name" {
 # value = module.windowsservers.public_ip_dns_name
#}