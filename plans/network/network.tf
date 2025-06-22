module "vnet" {
  source         = "../../modules/network"
  network_name   = var.vnetwork_name
  network        = var.vnetwork
  aks_rg         = var.aks_rg
  network_subnet = var.network_subnet
  location       = var.location
}