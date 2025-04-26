resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location

  tags = var.default_tags
}


module "network" {
  source              = "./modules/network"
  project_name        = var.project_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.network_address_space
  subnet_prefixes     = var.subnet_address_prefix
  nsg_rules           = var.nsg_rules
  default_tags        = var.default_tags
}

module "compute" {
  source              = "./modules/compute"
  project_name        = var.project_name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.network.subnet_id
  virtual_machines    = var.virtual_machines
  default_tags        = var.default_tags
}

module "datastore" {
  source                           = "./modules/datastore"
  storage_account_name             = var.storage_account_name
  account_tier                     = var.storage_account_tier
  account_replication_type         = var.storage_account_replication
  postgresql_server_name           = var.postgresql_server_name
  postgresql_admin_username        = var.postgresql_admin_username
  postgresql_admin_password        = var.postgresql_admin_password
  postgresql_version               = var.postgresql_version
  postgresql_sku_name              = var.postgresql_sku_name
  postgresql_storage_mb            = var.postgresql_storage_mb
  postgresql_backup_retention_days = var.postgresql_backup_retention_days
  key_vault_name                   = var.key_vault_name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  default_tags                     = var.default_tags
}
