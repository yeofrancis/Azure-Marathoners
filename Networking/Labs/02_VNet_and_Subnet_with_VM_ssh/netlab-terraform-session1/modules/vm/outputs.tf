output "public_ip" {
  value = azurerm_public_ip.vm_pip.ip_address
}

output "private_ip" {
  value = azurerm_network_interface.vm_nic.ip_configuration[0].private_ip_address
}

output "nic_id" {
  value = azurerm_network_interface.vm_nic.id
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm_net.id
}
