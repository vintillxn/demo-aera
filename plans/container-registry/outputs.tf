output "acr_url" {
  value = azurerm_container_registry.acr.login_server
}

output "usr" {
  value = azurerm_container_registry.acr.admin_username
}

output "pswd" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}