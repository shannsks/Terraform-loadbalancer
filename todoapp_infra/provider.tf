terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.43.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "541aa6e9-5e65-4ca7-bd4b-befb88d6f6ae"
  
}