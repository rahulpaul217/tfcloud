resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = local.resource_group_name
  tags     = local.common_tags
}