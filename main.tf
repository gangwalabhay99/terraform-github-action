terraform {
  backend "azurerm"{
    resource_group_name = "terraformDemo"
    storage_account_name = "terraformdemogit"
    container_name = "tfstatefile"
    key = "lhdi9R/78A2Bi59LkngvbN3PPC1BjEvhEoAglzwD/WG0XZx/eqr/VmIWW1D3BqEXn6PuNdqd2EK2+ASteSYSvg=="
  }
}
 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
 
data "azurerm_client_config" "current" {}
