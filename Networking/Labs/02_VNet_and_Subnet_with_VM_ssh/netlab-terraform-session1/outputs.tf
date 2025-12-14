output "resource_group" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.web.id
}

output "vm_public_ip" {
  value = module.vm.public_ip
}

output "vm_private_ip" {
  value = module.vm.private_ip
}
