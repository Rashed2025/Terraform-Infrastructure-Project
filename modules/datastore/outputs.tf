output "storage_account_id" {
  description = "ID of the Storage Account."
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "Name of the Storage Account."
  value       = azurerm_storage_account.this.name
}

output "postgresql_server_id" {
  description = "ID of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.id
}

output "postgresql_fqdn" {
  description = "Fully Qualified Domain Name (FQDN) of the PostgreSQL Server."
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "key_vault_id" {
  description = "ID of the Azure Key Vault."
  value       = azurerm_key_vault.this.id
}

output "key_vault_uri" {
  description = "URI of the Azure Key Vault."
  value       = azurerm_key_vault.this.vault_uri
}
