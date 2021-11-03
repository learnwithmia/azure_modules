resource "azurerm_container_registry" "acr" {
  for_each            = var.container_registries
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  tags                = each.value.tags
  admin_enabled       = each.value.admin_enabled
  network_rule_set    = []
  sku                 = each.value.sku
}
