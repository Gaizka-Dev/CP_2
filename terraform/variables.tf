variable "subscription_id" {
   description = "Azure subscription ID"
   type = string
   sensitive = true
}

variable "resource_group_name" {
   description = "Name of the resource group"
   type = string
   default = "rg-terraform-dev"
}

variable "location" {
   description = "Azure region where resource group will be deployed"
   type = string
   default = "West Europe"
}

variable "location_france" {
   description = "Azure region where resources will be deployed"
   type = string
   default = "France Central"
}

variable "virtual_network" {
   description = "Name of the Virtual Network"
   type = string
   default = "vnet-terraform-dev"
}

variable "subnet" {
   description = "Name of the Subnet"
   type = string
   default = "subnet-terraform-dev"
}