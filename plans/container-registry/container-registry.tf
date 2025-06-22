locals {
  rg_name  = "test"
  location = "westeurope"
  aks_name = "test-aks"
}
data "azurerm_resource_group" "rg" {
  name = local.rg_name
}

# Azure Container Registry
resource "azurerm_container_registry" "acr" {
  name                = "aeratestacr"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = local.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_role_assignment" "ra" {
  principal_id                     = data.azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = local.aks_name
  resource_group_name = local.rg_name
}