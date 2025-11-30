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
  subscription_id = "f63f9a72-32ba-4cf2-acf0-446dad259c1b"
}
