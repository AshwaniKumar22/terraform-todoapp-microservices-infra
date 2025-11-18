variable "cluster_details" {
  type = map(object({
    aks_cluster_name = string
    location         = string
    rg_name          = string
    dns_prefix       = string
    node_pool_name   = string
    node_count       = number
    vm_size          = string
    identity_type    = string
    tags             = optional(map(string), {})

  }))
}
variable "common_tags" {
  type    = map(string)
  default = {}
}

