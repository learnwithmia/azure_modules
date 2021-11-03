variable "storage_shares" {
  type = map(object({
    name                 = string
    storage_account_name = string
  }))
}
