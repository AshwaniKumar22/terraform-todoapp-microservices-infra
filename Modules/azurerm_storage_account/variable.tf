variable "storage_details" {
  type = map(object({
    storage_name             = string
    rg_name                  = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string), {})
  }))
}
variable "common_tags" {
  type    = map(string)
  default = {}
}
