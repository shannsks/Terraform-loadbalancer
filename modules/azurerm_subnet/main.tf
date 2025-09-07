resource "azurerm_subnet" "subnet" {
    name = var.subnet_name
    resource_group_name = var.resource_group_name
    virtual_network_name = var.virtual_network_name
    address_prefixes = var.address_prefixes
  
}

variable "subnet_name" {}

variable "resource_group_name" {}
variable "virtual_network_name" {
  
}
variable "address_prefixes" {
  
}