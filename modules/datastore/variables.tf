variable "storage_account_name" {
  description = "Name of the Azure Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "Azure Region for resources."
  type        = string
}

variable "account_tier" {
  description = "Tier of the Storage Account (Standard or Premium)."
  type        = string
}

variable "account_replication_type" {
  description = "Replication type of the Storage Account (LRS, GRS, ZRS, etc)."
  type        = string
}

variable "postgresql_server_name" {
  description = "Name of the PostgreSQL Flexible Server."
  type        = string
}

variable "postgresql_admin_username" {
  description = "Admin username for PostgreSQL."
  type        = string
}

variable "postgresql_admin_password" {
  description = "Admin password for PostgreSQL."
  type        = string
}

variable "postgresql_version" {
  description = "PostgreSQL version (e.g., 13, 14)."
  type        = string
}

variable "postgresql_sku_name" {
  description = "SKU name for PostgreSQL Flexible Server (e.g., Standard_B1ms)."
  type        = string
}

variable "postgresql_storage_mb" {
  description = "Storage size in MB for PostgreSQL."
  type        = number
}

variable "postgresql_backup_retention_days" {
  description = "Backup retention period for PostgreSQL."
  type        = number
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
  type        = string
}

variable "default_tags" {
  description = "Default tags applied to all resources."
  type        = map(string)
}
