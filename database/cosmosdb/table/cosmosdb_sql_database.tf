resource "azurerm_cosmosdb_table" "table" {
  for_each            = var.cosmosdb_table
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  account_name        = each.value.account_name
}
