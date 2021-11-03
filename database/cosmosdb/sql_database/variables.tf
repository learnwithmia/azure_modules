variable "cosmosdb_sql_database" {
  type = map(object({
    name                = string
    resource_group_name = string
    account_name        = string
  }))
}
