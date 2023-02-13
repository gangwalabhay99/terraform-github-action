terraform {
  backend "azurerm"{
    resource_group_name = "terraformDemo"
    storage_account_name = "terraformdemogit"
    container_name = "tfstatefile"
    key = "tfstatefile.tfstate"
  }
}
 
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
}
 
data "azurerm_client_config" "current" {}
