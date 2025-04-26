output "main_vm_ssh_info" {
  description = "SSH info for main_vm"
  value = <<EOT
🔵 Main VM:
- Private IP: ${module.compute.virtual_machines_private_ips["main_vm"]}
- Public IP: ${module.compute.virtual_machines_public_ips["main_vm"]}

To fast SSH: ssh ${var.virtual_machines["main_vm"].admin_username}@${module.compute.virtual_machines_public_ips["main_vm"]}
EOT
}

output "chromadb_vm_ssh_info" {
  description = "SSH info for chromadb_vm"
  value = <<EOT
🔵 ChromaDB VM:
- Private IP: ${module.compute.virtual_machines_private_ips["chromadb_vm"]}
- Public IP: ${module.compute.virtual_machines_public_ips["chromadb_vm"]}

To fast SSH: ssh ${var.virtual_machines["chromadb_vm"].admin_username}@${module.compute.virtual_machines_public_ips["chromadb_vm"]}
EOT
}
