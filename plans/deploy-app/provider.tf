locals {
  aks_name = "test-aks"
  aks_rg  = "test"
}

terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.30.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "stateuser"
    container_name       = "tf-state"
    key                  = "k8sapp.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionID
}

provider "kubernetes" {
  host = data.azurerm_kubernetes_cluster.aks.kube_config.0.host
  client_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate)
  client_key = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate)
}

data azurerm_kubernetes_cluster "aks" {
  name = local.aks_name
  resource_group_name = data.azurerm_resource_group.aks_rg.name
}

data azurerm_resource_group "aks_rg" {
  name = local.aks_rg
}