variable "public_ips" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    domain_name_label   = string
    tags                = map(string)
  }))
}
