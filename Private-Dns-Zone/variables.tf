variable "resource_group_name" {
  description = "The name of the existing resource group."
  type        = string
}

variable "dns_zone_name" {
  description = "The name of the Private DNS Zone."
  type        = string
}

variable "vnet_links" {
  description = "A map of virtual network links to associate with the Private DNS Zone."
  type = map(object({
    name                 = string
    virtual_network_id   = string
    registration_enabled = optional(bool, false)
    tags                 = optional(map(string), {})
  }))
  default = {}
}

variable "tags" {
  description = "A map of tags to apply to the Private DNS Zone."
  type        = map(string)
  default     = {}
}
