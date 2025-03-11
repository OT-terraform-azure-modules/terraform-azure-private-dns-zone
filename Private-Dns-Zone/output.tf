output "private_dns_zone_name" {
  description = "The name of the Private DNS Zone."
  value       = azurerm_private_dns_zone.dns_zone.name
}

output "vnet_links" {
  description = "Map of virtual network links created."
  value = {
    for key, link in azurerm_private_dns_zone_virtual_network_link.vnet_links : key => link.name
  }
}
