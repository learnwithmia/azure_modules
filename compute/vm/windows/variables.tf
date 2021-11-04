variable "windows_vm" {
  type = map(object({
    name                  = string
    location              = string
    resource_group_name   = string
    tags                  = map(string)
    admin_password        = string
    network_interface_ids = list(string)
    size                  = string
  }))
}