variable "kv_details" {
   type = map(object({
    kv_name  = string
    location = string
    rg_name  = string
    tags     = optional(map(string), {})
  }))
}
variable "common_tags" {
  type    = map(string)
  default = {}
}
