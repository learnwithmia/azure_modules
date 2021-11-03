resource "azurerm_virtual_network" "virtual_network" {
  for_each            = var.vnets
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags
  address_space       = each.value.address_space
}
