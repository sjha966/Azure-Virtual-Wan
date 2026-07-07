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
  subscription_id = "subscriptions ID"

  features {}  # Correctly defined as a block
  skip_provider_registration = true
}

provider "azurerm" {
  alias           = "subscription2"
  subscription_id = "subscriptions ID"

  features {}  # Correctly defined as a block
  skip_provider_registration = true
}


module "azure_infrastructure" {
 source = "./configuration"
}



