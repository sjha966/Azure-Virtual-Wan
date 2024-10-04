# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/expressRouteGateways/ergw-weu/expressRouteConnections/ExRConnection-westeurope-1725882367643"
resource "azurerm_express_route_connection" "westeurope_connection" {
  authorization_key                    = null
  enable_internet_security             = false
  express_route_circuit_peering_id     = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/vwan-rg-westeurope/providers/Microsoft.Network/expressRouteCircuits/ER-Standard-West-Europe/peerings/AzurePrivatePeering"
  express_route_gateway_bypass_enabled = false
  express_route_gateway_id             = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/expressRouteGateways/ergw-weu"
  name                                 = "ExRConnection-westeurope-1725882367643"
  routing_weight                       = 0
  routing {
    associated_route_table_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-euw4-001/hubRouteTables/defaultRouteTable"
    inbound_route_map_id      = null
    outbound_route_map_id     = null
    propagated_route_table {
      labels          = ["default"]
      route_table_ids = ["/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-euw4-001/hubRouteTables/defaultRouteTable"]
    }
  }
}

# __generated__ by Terraform from "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/expressRouteGateways/ergw-swc/expressRouteConnections/ExRConnection-swedencentral-1725882304767"
resource "azurerm_express_route_connection" "sweden_connection" {
  authorization_key                    = null
  enable_internet_security             = false
  express_route_circuit_peering_id     = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/vwan-rg-sweden/providers/Microsoft.Network/expressRouteCircuits/ER-Local-Sweden-Central/peerings/AzurePrivatePeering"
  express_route_gateway_bypass_enabled = false
  express_route_gateway_id             = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/expressRouteGateways/ergw-swc"
  name                                 = "ExRConnection-swedencentral-1725882304767"
  routing_weight                       = 0
  routing {
    associated_route_table_id = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-swc-001/hubRouteTables/defaultRouteTable"
    inbound_route_map_id      = null
    outbound_route_map_id     = null
    propagated_route_table {
      labels          = ["none"]
      route_table_ids = ["/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-swc-001/hubRouteTables/noneRouteTable"]
    }
  }
}
