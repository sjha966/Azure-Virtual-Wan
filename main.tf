terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      #version = "~> 3.7"
    }
    random = {
      source  = "hashicorp/random"
      #version = "~> 3.5"
    }
  
    }

  backend "azurerm" {}
}

provider "azurerm" {
  features        {}

  skip_provider_registration = true
}
provider "azurerm" {
  alias           = "subscription1"
  subscription_id = "405303fb-8742-45fb-ae2b-9bfea2a82ea1"

  features {}  # Correctly defined as a block
  skip_provider_registration = true
}

provider "azurerm" {
  alias           = "subscription2"
  subscription_id = "d350e7f2-578e-496d-b94e-9b4e7e136b56"

  features {}  # Correctly defined as a block
  skip_provider_registration = true
}


module "azure_infrastructure" {
 source = "./configuration"
}



