resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.cluster_details
  name                = each.value.aks_cluster_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = each.value.node_pool_name
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = each.value.identity_type
  }

  tags     = merge(var.common_tags, each.value.tags)
}