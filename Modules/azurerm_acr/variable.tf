variable "acr_details" {
  type = map(object({
    acr_name      = string
    rg_name       = string
    location      = string
    sku           = string
    admin_enabled = bool
    tags          = optional(map(string),{})
  }))
}
variable "common_tags" {
  type    = map(string)
  default = {}
}

