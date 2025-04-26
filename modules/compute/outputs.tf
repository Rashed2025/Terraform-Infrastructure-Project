output "virtual_machines_private_ips" {
  description = "Private IP addresses of the VMs."
  value = {
    for vm_name, nic in azurerm_network_interface.this : vm_name => nic.private_ip_address
  }
}

output "virtual_machines_public_ips" {
  description = "Public IP addresses of the VMs."
  value = {
    for vm_name, pip in azurerm_public_ip.this : vm_name => pip.ip_address
  }
}

output "virtual_machine_ids" {
  description = "IDs of the VMs."
  value = {
    for vm_name, vm in azurerm_linux_virtual_machine.this : vm_name => vm.id
  }
}
