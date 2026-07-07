import {
  to = azurerm_express_route_port.example
  id = "/subscriptions/subscriptions ID/resourceGroups/ah76gazsergr001/providers/Microsoft.Network/expressRoutePorts/ah76gazseexpd002"
}
# Import configuration for ER-Local-Sweden-Central circuit
import {
  to = azurerm_express_route_circuit.er_circuit_sweden
  id = "/subscriptions/subscriptions ID/resourceGroups/vwan-rg-sweden/providers/Microsoft.Network/expressRouteCircuits/ER-Local-Sweden-Central"
}

# Import configuration for ER-Standard-West-Europe circuit
import {
  to = azurerm_express_route_circuit.er_circuit_westeurope
  id = "/subscriptions/subscriptions ID/resourceGroups/vwan-rg-westeurope/providers/Microsoft.Network/expressRouteCircuits/ER-Standard-West-Europe"
}
# Import configuration for the ExpressRoute connection in Sweden Central
import {
  to = azurerm_express_route_connection.sweden_connection
  id = "/subscriptions/subscriptions ID/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/expressRouteGateways/ergw-swc/expressRouteConnections/ExRConnection-swedencentral-1725882304767"
}

# Import configuration for the ExpressRoute connection in West Europe
import {
  to = azurerm_express_route_connection.westeurope_connection
  id = "/subscriptions/subscriptions ID/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/expressRouteGateways/ergw-weu/expressRouteConnections/ExRConnection-westeurope-1725882367643"
}
