resource "azurerm_resource_group" "rg" {
  for_each = var.rg_details
  name     = each.value.rg_name
  location = each.value.location
  tags     = merge(var.common_tags, each.value.tags)

  lifecycle {
    prevent_destroy = true
    ignore_changes = [tags]
    create_before_destroy = true
  }
}
