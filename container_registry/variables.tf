variable "container_registries" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    tags                = map(string)
    admin_enabled       = bool
    // network_rule_set    = string
    sku                 = string
  }))
}
