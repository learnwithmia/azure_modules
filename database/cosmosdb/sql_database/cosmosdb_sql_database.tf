resource "azurerm_cosmosdb_sql_database" "sql_database" {
  for_each            = var.cosmosdb_sql_database
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  account_name        = each.value.account_name
}
