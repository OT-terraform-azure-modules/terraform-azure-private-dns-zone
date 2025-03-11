variable "resource_group_name" {
  description = "The existing resource group where the DNS Zone will be created."
  type        = string
}

variable "dns_zone_name" {
  description = "The name of the Private DNS Zone."
  type        = string
}

variable "vnet_links" {
  description = "A map of virtual network links for the Private DNS Zone."
  type = map(object({
    name                 = string
    virtual_network_id   = string
    registration_enabled = optional(bool, false)
    tags                 = optional(map(string), {})
  }))
}

variable "tags" {
  description = "Tags for the Private DNS Zone."
  type        = map(string)
  default     = {}
}
