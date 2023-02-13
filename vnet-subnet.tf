resource "azurerm_network_security_group" "nsg" {
  name                = "network-security-group"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_virtual_network" "vnet" {
  name                = "action-virtual-network"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "actionsubnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "actionsubnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.nsg.id
  }
}