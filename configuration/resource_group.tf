module "rg-non-prod-vwaninfra-swe" {
  source = "../modules/terraform-azurerm-resource-group"

  # Resource Group Variables

  az_rg_name     = "rg-non-prod-vwaninfra-swe"
  az_rg_location = "Sweden Central"

  az_tags = {
    
    AppID         = "ah77"
    AssignmentGroup = "SN_INFOSYS-CLOUD-TECH-SUPP"
    Environment     = "Non-production"
    Role          = "Resource Group"
  }
}

module "rg-prod-coreinfra-euw4" {
  source = "../modules/terraform-azurerm-resource-group"

  # Resource Group Variables

  az_rg_name     = "rg-non-prod-coreinfra-euw4"
  az_rg_location = "West Europe"

  az_tags = {

    AppID         = "ah77"
    AssignmentGroup = "SN_INFOSYS-CLOUD-TECH-SUPP"
    Environment     = "Non-production"
    Role          = "Resource Group"
  }
}


