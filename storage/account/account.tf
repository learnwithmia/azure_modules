resource "azurerm_storage_account" "storage_account" {
  for_each                 = var.storage_accounts
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_kind             = each.value.account_kind
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = each.value.tags
}
