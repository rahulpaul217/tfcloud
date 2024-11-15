variable "env" {
  type        = string
  description = "define environmnt variable"

}
variable "location" {

}
variable "business_unit" {

}

variable "resource_group_name_prefix" {

}
variable "services" {

}
variable "vnet_address_space_dev" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "vnet_address_space_prod" {
  type    = list(string)
  default = ["192.168.1.0/22"]
}

variable "vmname" {

}