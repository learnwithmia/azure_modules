resource "azurerm_storage_share" "storage_share" {
  for_each             = var.storage_shares
  name                 = each.value.name
  storage_account_name = each.value.storage_account_name
}
