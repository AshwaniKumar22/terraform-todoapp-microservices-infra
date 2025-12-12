terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }  
     backend "azurerm" {
  resource_group_name  = "githubaction-rg"
  storage_account_name = "githubactionstrg1"
  container_name       = "tfstate"
  key                  = "dev.tfstate"
}
}

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "14ecb8dc-c241-4d1e-a6c1-7efd26e3f1e3"
}
