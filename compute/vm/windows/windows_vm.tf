resource "azurerm_windows_virtual_machine" "windows_virtual_machine" {
    for_each = var.windows_vm
    name                  = each.value.name
    resource_group_name   = each.value.resource_group_name
    location              = each.value.location
    tags                  = each.value.tags
    admin_password        = each.value.admin_password
    admin_username        = each.value.admin_username
    network_interface_ids = each.value.network_interface_ids
    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    size                  = each.value.size
    source_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer     = "WindowsServer"
        sku       = "2016-Datacenter"
        version   = "latest"
    }
}
