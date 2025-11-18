variable "db_details" {
  type = map(object({
    sql_server_name = string
    rg_name         = string
    db_name         = string
    collation       = string
    license_type    = string
    max_size_gb     = number
    sku_name        = string
    enclave_type    = string
    tags            = optional(map(string),{})
  }))
}
variable "common_tags" {
  type    = map(string)
  default = {}
}
