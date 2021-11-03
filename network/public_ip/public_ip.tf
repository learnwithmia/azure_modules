resource "azurerm_public_ip" "public_ip" {
  for_each            = var.public_ips
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = "Static"
  tags                = each.value.tags
}
