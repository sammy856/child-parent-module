# 1st way
# resource "azurerm_resource_group" "rgs" {
#     name = var.rgname
#     location = var.location

# }


resource "azurerm_resource_group" "rgs" {
  for_each = var.rgdetails
  name     = each.value.name
  location = each.value.location
}



