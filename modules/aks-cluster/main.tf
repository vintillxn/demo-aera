# Create an Azure Kubernetes Service cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                      = var.k8s_cluster_name
  location                  = var.region
  resource_group_name       = var.resource_group_name
  dns_prefix                = "aks"
  kubernetes_version        = var.k8s_version
  automatic_channel_upgrade = "stable"


  default_node_pool {
    name       = var.default_pool_name
    node_count = 2
    vm_size    = "standard_a2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  # Optional: Enable RBAC
  role_based_access_control_enabled = true
}