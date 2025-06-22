locals {
  aks_rg = "test"
}
module "aks" {
  source              = "../../modules/aks-cluster"
  k8s_cluster_name    = var.k8s_cluster_name
  k8s_version         = var.k8s_version
  region              = var.region
  default_pool_name   = var.default_pool_name
  vnet_name           = var.vnet_name
  resource_group_name = data.azurerm_resource_group.aks_rg.name
  vnet_subnet_id      = data.azurerm_virtual_network.vnet.id
}

data "azurerm_resource_group" "aks_rg" {
  name = local.aks_rg
}

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.aks_rg.name
}