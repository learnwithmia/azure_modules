variable "vnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    tags                = map(string)
    address_space       = list(string)
  }))
}
