locals {
  resource_group_name = "${var.resource_group_name_prefix}-${var.services}-${terraform.workspace}-${var.business_unit}-${var.location}"
  location            = var.location
  common_tags = {
    env           = "${var.env}"
    business_unit = "${var.business_unit}"
    cost_centre   = "${var.business_unit}"
    location      = "${var.location}"
    services      = "${var.services}"
  }
  vm        = "vm${var.vmname}${var.services}${var.business_unit}${var.location}"
  vnet_name = "vnet-${var.services}-${var.business_unit}-${var.location}"

  vnet_address_space = var.env == "Dev" ? var.vnet_address_space_dev : var.vnet_address_space_prod
}