output "dns_zone_name" {
  description = "The name of the Private DNS Zone created."
  value       = module.private_dns.private_dns_zone_name
}

output "vnet_links" {
  description = "List of Virtual Network Links created."
  value       = module.private_dns.vnet_links
}
