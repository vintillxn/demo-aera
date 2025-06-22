resource "azurerm_virtual_network" "vnet" {
  for_each            = var.network_subnet
  name                = var.network_name
  location            = data.azurerm_resource_group.aks_rg.location
  resource_group_name = data.azurerm_resource_group.aks_rg.name
  address_space       = var.network
  subnet {
    name           = each.key
    address_prefix = each.value
  }
}

data "azurerm_resource_group" "aks_rg" {
  name = var.aks_rg

}