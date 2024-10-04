module "infoblox_vm" {
  source = "../modules/Infoblox-Terraform-Azure-main"

  # Provide necessary variables for the module
  vm_name                 = "infoblox-nios-901"
  admin_username          = "infobloxadmin"
  admin_password          = "zingoPLUS@123"
  resource_group_name     = "rg-non-prod-coreinfra-euw4"
  location                = "West Europe"
  subnet_id               = azurerm_subnet.infoblox_subnet.id
  vm_size                 = "Standard_DS11_v2"
  public_ip_enabled       = true
}

resource "azurerm_virtual_network" "vnet" {
  name                = "infoblox-vnet"
  address_space       = ["10.41.223.0/24"]
  location            = "West Europe"
  resource_group_name = "rg-non-prod-coreinfra-euw4"
}

resource "azurerm_subnet" "infoblox_subnet" {
  name                 = "infoblox-subnet"
  resource_group_name  = "rg-non-prod-coreinfra-euw4"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.41.223.0/25"]
}

output "public_ip" {
  value = module.infoblox_vm.public_ip
}

output "private_ip" {
  value = module.infoblox_vm.private_ip
}

