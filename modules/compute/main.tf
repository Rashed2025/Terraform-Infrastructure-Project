resource "azurerm_public_ip" "this" {
  for_each = var.virtual_machines

  name                = "${var.project_name}-${each.key}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  sku                 = "Basic"

  tags = var.default_tags
}

resource "azurerm_network_interface" "this" {
  for_each = var.virtual_machines

  name                = "${var.project_name}-${each.key}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.this[each.key].id
  }

  tags = var.default_tags
}

resource "azurerm_linux_virtual_machine" "this" {
  for_each = var.virtual_machines

  name                  = "${var.project_name}-${each.key}-vm"
  location              = var.location
  resource_group_name   = var.resource_group_name
  size                  = each.value.vm_size
  admin_username        = each.value.admin_username
  network_interface_ids = [azurerm_network_interface.this[each.key].id]

  disable_password_authentication = true

  admin_ssh_key {
    username   = each.value.admin_username
    public_key = each.value.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = "latest"
  }

  computer_name = replace("${var.project_name}-${each.key}-vm", "_", "-")

  tags = var.default_tags
}
