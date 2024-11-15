output "rg" {
  value = azurerm_resource_group.rg.name
}
output "vnetid" {
  value = azurerm_virtual_network.vnet.id
}

output "nicid" {
  value = azurerm_network_interface.nic.id
}

output "pipid" {
  value = azurerm_public_ip.pip.id
}
output "snetid" {
  value = azurerm_subnet.subnet.id
}
output "locationname" {
  value = azurerm_resource_group.rg.location

}