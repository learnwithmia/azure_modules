variable "storage_accounts" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    tags                = map(string)
    account_kind        = string
  }))
}
