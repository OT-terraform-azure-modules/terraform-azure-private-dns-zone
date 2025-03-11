data "azurerm_resource_group" "modular_rg" {
  name = var.resource_group_name
}

resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.modular_rg.name
  tags               = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet_links" {
  for_each = { for key, vnet_link in var.vnet_links : key => vnet_link }

  name                  = each.value.name
  resource_group_name   = data.azurerm_resource_group.modular_rg.name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id    = each.value.virtual_network_id
  registration_enabled  = each.value.registration_enabled
  tags                  = each.value.tags
}
