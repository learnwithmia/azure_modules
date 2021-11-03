resource "azurerm_cosmosdb_account" "db" {
  for_each            = var.cosmosdb_account
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  tags                = each.value.tags
  capabilities {
    name = "EnableServerless"
  }
  capabilities {
    name = "EnableTable"
  }
  consistency_policy {
    consistency_level = "BoundedStaleness"
  }
  # 400 RU/s throughput and 5 GB per month for storage account. only one free-tiered account per sub
  enable_free_tier    = each.value.enable_free_tier
  geo_location {
    location          = each.value.location
    failover_priority = 0
  }
  kind                = "GlobalDocumentDB"
  offer_type          = "Standard"
}
