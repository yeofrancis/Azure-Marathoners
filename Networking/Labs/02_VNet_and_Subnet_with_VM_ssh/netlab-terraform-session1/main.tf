locals {
  name_suffix = "learn"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.prefix}-${local.name_suffix}"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "web" {
  name                 = "web-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.0/24"]
}

module "vm" {
  source              = "./modules/vm"
  name_prefix         = var.prefix
  location            = azurerm_resource_group.rg.location
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path
  subnet_id           = azurerm_subnet.web.id
  resource_group_name = azurerm_resource_group.rg.name
}

