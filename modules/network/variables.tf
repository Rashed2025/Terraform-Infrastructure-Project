variable "project_name" {
  description = "The name of the project, used for naming resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "address_space" {
  description = "List of address spaces for the Virtual Network."
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "List of address prefixes for the Subnet."
  type        = list(string)
}

variable "nsg_rules" {
  description = "List of NSG rules to apply to the Network Security Group."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "default_tags" {
  description = "Default tags applied to all network resources."
  type        = map(string)
}
