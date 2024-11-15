locals {
  ports = ["22","3389","80","443"]
}

resource "azurerm_network_security_group" "nsg" {
  name                = "nsg1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dynamic "security_rule" {
    for_each = local.ports
    content {      
            name                        = "rule-${security_rule.value}"
            priority                    = sum([100,security_rule.key])
            direction                   = "Inbound"
            access                      = "Allow"
            protocol                    = "Tcp"
            source_port_range           = security_rule.value
            destination_port_range      = "22"
            source_address_prefix       = "*"
            destination_address_prefix  = "*"            
}

    } 

  }



# Resource Creation to associate nsg with subnet
resource "azurerm_subnet_network_security_group_association" "networksgassociation" {
    subnet_id                 = azurerm_subnet.subnet.id
    network_security_group_id = azurerm_network_security_group.nsg.id
   }
