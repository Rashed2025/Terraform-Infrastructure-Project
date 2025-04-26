variable "project_name" {
  description = "Project name for naming resources."
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "network_address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
}

variable "subnet_address_prefix" {
  description = "Address prefixes for the Subnet."
  type        = list(string)
}

variable "nsg_rules" {
  description = "List of NSG rules."
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


# Storage Account variables
variable "storage_account_name" {
  description = "The Storage Account name."
  type        = string
}

variable "storage_account_tier" {
  description = "The Storage Account tier: Standard or Premium."
  type        = string
}

variable "storage_account_replication" {
  description = "The Storage Account replication type: LRS, GRS, ZRS, etc."
  type        = string
}

# PostgreSQL variables
variable "postgresql_server_name" {
  description = "The PostgreSQL Flexible Server name."
  type        = string
}

variable "postgresql_admin_username" {
  description = "Admin username for the PostgreSQL server."
  type        = string
}

variable "postgresql_admin_password" {
  description = "Admin password for the PostgreSQL server."
  type        = string
}

variable "postgresql_version" {
  description = "PostgreSQL server version."
  type        = string
}

variable "postgresql_sku_name" {
  description = "SKU name for PostgreSQL Flexible Server."
  type        = string
}

variable "postgresql_storage_mb" {
  description = "Storage size in MB for PostgreSQL Flexible Server."
  type        = number
}

variable "postgresql_backup_retention_days" {
  description = "Backup retention period for PostgreSQL Flexible Server."
  type        = number
}

# Key Vault variable
variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
  type        = string
}

variable "default_tags" {
  description = "Default tags for all resources."
  type        = map(string)
}


variable "subscription_id" {
  description = "Name of the Azure Subscription ID."
  type        = string
}