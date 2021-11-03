variable "cosmosdb_table" {
  type = map(object({
    name                = string
    resource_group_name = string
    account_name        = string
  }))
}
