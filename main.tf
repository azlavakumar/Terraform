provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "virtual_network" {
  resource_group_name  = var.resource_group_name
  location             = var.location
  name                 = var.virtual_network_name
  address_space        = var.address_space
  
    
    tags = {
    environment = "dev"
    costcenter  = "it"
  }

}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes1

}

resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes2

}