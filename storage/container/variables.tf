variable "storage_containers" {
  type = map(object({
    name                  = string
    resource_group_name   = string
    container_access_type = string
    storage_account_name  = string
  }))
}
