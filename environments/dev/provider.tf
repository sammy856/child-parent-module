# provider "azurerm" {
#   features {}
# }


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
  #   backend "azurerm" {
  #     resource_group_name   = "tfstate-rg"
  #     storage_account_name  = "tfstateaccount"
  #     container_name        = "tfstatecontainer"
  #     key                   = "terraform.tfstate"
  # }
}


provider "azurerm" {
  # Configuration options
  features {}
}