resource "azurerm_linux_virtual_machine" "linux_virtual_machine" {
    for_each = var.linux_vm
    name                  = each.value.name
    resource_group_name   = each.value.resource_group_name
    location              = each.value.location
    tags                  = each.value.tags
    admin_username        = "ubuntu"
    admin_password        = each.value.admin_password
    disable_password_authentication = false
    network_interface_ids = each.value.network_interface_ids
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    size                  = each.value.size
    source_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
        version   = "latest"
    }

}

//   name                            = "dev01"
//   admin_password                  = data.azurerm_key_vault_secret.ubuntu_password.value
//   disable_password_authentication = false
//   os_disk {
//     caching              = "ReadWrite"
//     storage_account_type = "Standard_LRS"
//   }
// }