terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "stateuser"
    container_name       = "tf-state"
    key                  = "acr.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionID
}

