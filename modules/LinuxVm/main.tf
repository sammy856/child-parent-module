resource "azurerm_linux_virtaul_machine" "lvm" {
  for_each            = var.lvmdetails
  name                = each.value.vmname
  resource_group_name = each.vlue.rgname
  location            = each.value.location
  size                = each.value.vmsize

  admin_username = azurerm_key_vault_secret.username.value

  admin_password = azurerm_key_vault_secret.password.value

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_name = "Standard_LTS"
  }

  source_image_reference {

    publisher = "Canonical"
    offer     = "0001-com-ubunut-server-jammy"
    sku       = "22_04_lts"
    version   = "latest"
  }

}
