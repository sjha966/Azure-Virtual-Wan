# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/405303fb-8742-45fb-ae2b-9bfea2a82ea1/resourceGroups/ah76gazsergr001/providers/Microsoft.Network/expressRoutePorts/ah76gazseexpd002"
resource "azurerm_express_route_port" "example" {
  provider = azurerm.subscription1 
  
  bandwidth_in_gbps   = 10
  billing_type        = "MeteredData"
  encapsulation       = "Dot1Q"
  location            = "swedencentral"
  name                = "ah76gazseexpd002"
  peering_location    = "Equinix-Stockholm-SK1"
  resource_group_name = "ah76gazsergr001"
  tags = {
    AppID       = "ah77"
    Environment = "Non-production"
  }
  link1 {
    admin_enabled                 = true
    macsec_cak_keyvault_secret_id = null
    macsec_cipher                 = "GcmAes128"
    macsec_ckn_keyvault_secret_id = null
    macsec_sci_enabled            = false
  }
  link2 {
    admin_enabled                 = true
    macsec_cak_keyvault_secret_id = null
    macsec_cipher                 = "GcmAes128"
    macsec_ckn_keyvault_secret_id = null
    macsec_sci_enabled            = false
  }
  lifecycle {
    prevent_destroy = true
  }
}
