variable "project_name" {
  description = "The name of the project, used for naming resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the NICs will be attached."
  type        = string
}

variable "virtual_machines" {
  description = "Map of Virtual Machines configurations."
  type = map(object({
    vm_size         = string
    admin_username  = string
    ssh_public_key  = string
    image_publisher = string
    image_offer     = string
    image_sku       = string
  }))
}


variable "default_tags" {
  description = "Default tags applied to all compute resources."
  type        = map(string)
}
