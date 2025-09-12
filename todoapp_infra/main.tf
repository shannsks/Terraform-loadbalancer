module "resource_grp" {
  source                  = "../modules/Azurerm_resource_group"
  resource_group_name     = "sks-ins"
  resource_group_location = "central US"


}

module "virtual_network" {
  depends_on               = [module.resource_grp]
  source                   = "../modules/azurerm_virtual_network"
  virtual_network_name     = "sks-vnet"
  virtual_network_location = "central US"
  resource_group_name      = "sks-ins"
  address_space            = ["10.0.0.0/16"]



}

module "subnet" {
  depends_on           = [module.virtual_network]
  subnet_name          = "sks-subnet"
  source               = "../modules/azurerm_subnet"
  resource_group_name  = "sks-ins"
  virtual_network_name = "sks-vnet"
  address_prefixes     = ["10.0.1.0/24"]

}

module "vir-machine" {
  depends_on           = [module.resource_grp, module.subnet, module.virtual_network]
  source               = "../modules/azurerm_virtual_machine"
  nic_name             = "sks-nic"
  location             = "central us"
  resource_group_name  = "sks-ins"
  vm_name              = "sks-vm"
  vm_size              = "Standard_B1s"
  admin_username       = "sksadmin"
  admin_password       = "Welcome@2025"
  image_publisher      = "Canonical"
  image_offer          = "UbuntuServer"
  image_sku            = "22_04-lts-gen2"
  image_version        = "latest"
  virtual_network_name = "sks-vnet"
  frontend_subnet_name = "sks-subnet"



}
