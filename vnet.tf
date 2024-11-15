resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.env == "Dev" ? var.vnet_address_space_dev : var.vnet_address_space_prod

}



resource "azurerm_subnet" "subnet" {
  depends_on           = [azurerm_virtual_network.vnet]
  name                 = "snet-${local.vnet_name}"
  virtual_network_name = local.vnet_name
  resource_group_name  = azurerm_resource_group.rg.name
  address_prefixes     = ["10.0.2.0/24"]

}

resource "azurerm_public_ip" "pip" {
  name                = "pip1"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"

}

output "pip" {
  value = azurerm_public_ip.pip.ip_address

}