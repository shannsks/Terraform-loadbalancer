resource "azurerm_virtual_network" "azurerm_virtual" {
    name = var.virtual_network_name
    location = var.virtual_network_location
    resource_group_name = var.resource_group_name
    address_space = var.address_space
  
}

variable "virtual_network_name" {}
variable "virtual_network_location" {
  
}
variable "resource_group_name" {
  
}
variable "address_space" {
  
}