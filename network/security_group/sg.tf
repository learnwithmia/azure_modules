resource "azurerm_network_security_group" "security_group" {
  for_each            = var.security_groups
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags
}
