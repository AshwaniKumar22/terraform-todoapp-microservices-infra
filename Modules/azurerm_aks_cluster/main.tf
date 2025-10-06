resource "azurerm_kubernetes_cluster" "aks" {
    for_each = var.cluster_details
  name                = each.value.aks_cluster_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags     = var.tags
}