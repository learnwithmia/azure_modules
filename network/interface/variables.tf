variable "network_interfaces" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    tags                 = map(string)
    ip_conf_name         = string
    subnet_id            = string
    public_ip_address_id = string
  }))
}
