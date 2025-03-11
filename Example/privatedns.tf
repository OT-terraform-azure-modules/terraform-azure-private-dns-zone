data "azurerm_resource_group" "modular_rg" {
  name = var.resource_group_name
}

module "private_dns" {
  source              = "../Private-Dns-Zone"
  dns_zone_name       = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.modular_rg.name
  vnet_links          = var.vnet_links
  tags                = var.tags
}
