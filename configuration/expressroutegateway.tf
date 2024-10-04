module "expressroute" {
  source = "../modules/terraform-azurerm-expressroutegateway"

  resource_group_name_swc = "rg-non-prod-vwaninfra-swe"
  resource_group_name_weu = "rg-non-prod-coreinfra-euw4"
  vhub_id_swc             = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-vwaninfra-swe/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-swc-001"
  vhub_id_weu             = "/subscriptions/d350e7f2-578e-496d-b94e-9b4e7e136b56/resourceGroups/rg-non-prod-coreinfra-euw4/providers/Microsoft.Network/virtualHubs/vhub-non-prod-infra-euw4-001"
}

/*output "ergw_swc_id" {
  description = "The ID of the ExpressRoute Gateway in Sweden Central"
  value       = module.expressroute_gateways.ergw_swc_id
}

output "ergw_weu_id" {
  description = "The ID of the ExpressRoute Gateway in West Europe"
  value       = module.expressroute_gateways.ergw_weu_id
}*/