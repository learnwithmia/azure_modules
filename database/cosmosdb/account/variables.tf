variable "cosmosdb_account" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    tags                = map(string)
    enable_free_tier    = string
  }))
}
