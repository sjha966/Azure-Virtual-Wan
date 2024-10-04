# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/vwan-rg-sweden/providers/Microsoft.Network/expressRouteCircuits/ER-Local-Sweden-Central"
resource "azurerm_express_route_circuit" "er_circuit_sweden" {
  allow_classic_operations = false
  authorization_key        = null # sensitive
  bandwidth_in_gbps        = 1
  bandwidth_in_mbps        = null
  express_route_port_id    = "/subscriptions/405303fb-8742-45fb-ae2b-9bfea2a82ea1/resourceGroups/ah76gazsergr001/providers/Microsoft.Network/expressRoutePorts/ah76gazseexpd002"
  location                 = "swedencentral"
  name                     = "ER-Local-Sweden-Central"
  peering_location         = null
  resource_group_name      = "vwan-rg-sweden"
  service_provider_name    = null
  tags = {
    AppID       = "ah77"
    Environment = "Non-production"
  }
  sku {
    family = "UnlimitedData"
    tier   = "Local"
  }
}

# __generated__ by Terraform from "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/vwan-rg-westeurope/providers/Microsoft.Network/expressRouteCircuits/ER-Standard-West-Europe"
resource "azurerm_express_route_circuit" "er_circuit_westeurope" {
  allow_classic_operations = false
  authorization_key        = null # sensitive
  bandwidth_in_gbps        = 1
  bandwidth_in_mbps        = null
  express_route_port_id    = "/subscriptions/405303fb-8742-45fb-ae2b-9bfea2a82ea1/resourceGroups/ah76gazsergr001/providers/Microsoft.Network/expressRoutePorts/ah76gazseexpd002"
  location                 = "swedencentral"
  name                     = "ER-Standard-West-Europe"
  peering_location         = null
  resource_group_name      = "vwan-rg-westeurope"
  service_provider_name    = null
  tags = {
    AppID       = "ah77"
    Environment = "Non-production"
  }
  sku {
    family = "MeteredData"
    tier   = "Standard"
  }
}
