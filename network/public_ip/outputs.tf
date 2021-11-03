output "ids" {
  value = values(azurerm_public_ip.public_ip)[*].id
}
