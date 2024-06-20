resource "random_integer" "uid" {
  min = 10000
  max = 99999
}

resource "azurerm_resource_group" "main" {
  name = "${var.resource_group_name}-${random_integer.uid.result}"
  location = var.location
}

