#######     Authentication Variable     #######
variable  "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

########    Resource group Variables    #######
variable "resource_group_name" {}
variable "location" {}

#########   Virtual Network Variable    #######
variable "virtual_network_name" {}
variable "address_space" {}

variable "subnet1"{}  
variable "address_prefixes1" {}

variable "subnet2" {}
variable "address_prefixes2" {}