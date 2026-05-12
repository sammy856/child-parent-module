resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnetdetails
    name = each.value.vnetname
    location = each.value.location
    resource_group_name = each.value.rgname
    address_space =  each.value.address_space

     dynamic "subnet" {

    for_each = each.value.subnets

    content {

      name           = subnet.value.name
      address_prefixes = subnet.value.address_prefixes

    }
}
}


