resource "azurerm_storage_account" "account" {
  name                     = var.storage_account_name
  location                 = data.azurerm_resource_group.aks_rg.location
  resource_group_name      = data.azurerm_resource_group.aks_rg.name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.account.name
  container_access_type = "private"
}

data "azurerm_resource_group" "aks_rg" {
  name = var.rg_name
}