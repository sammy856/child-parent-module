resource "azurerm_network_interface" "nic" {
    for_each = var.nicdetails

  name                = each.value.nicname
  location            = each.value.location
  resource_group_name = each.value.rgname

  ip_configuration {

    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet[
      each.value.subnet_name
    ].id
    private_ip_address_allocation = "Dynamic"

  }
}