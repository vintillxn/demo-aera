locals {
  rg_name                  = "test"
  storage_account_name     = "stateuser"
  account_replication_type = "LRS"
  account_tier             = "Standard"
  container_name           = "tf-state"
  #audience_name                     = "github-aera"
  federated_identity_credential_name = "github-workflow"
  default_audience_name              = "api://AzureADTokenExchange"
  github_issuer_url                  = "https://token.actions.githubusercontent.com"
  user_assigned_identity_name        = "github-workflow-user"
  subject                            = "github"
  location                           = "westeurope"
}
module "tf-state-storage" {
  source                   = "../../modules/state"
  storage_account_name     = local.storage_account_name
  account_replication_type = local.account_replication_type
  account_tier             = local.account_tier
  container_name           = local.container_name
  rg_name                  = azurerm_resource_group.aks_rg.name
  depends_on               = [azurerm_resource_group.aks_rg]
}

resource "azurerm_resource_group" "aks_rg" {
  name     = local.rg_name
  location = local.location
}