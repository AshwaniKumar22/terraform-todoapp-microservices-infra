data "azurerm_mssql_server" "sql_server" {
  for_each            = var.db_details
  name                = each.value.sql_server_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_mssql_database" "db_details" {
  for_each     = var.db_details
  name         = each.value.db_name
  server_id    = data.azurerm_mssql_server.sql_server[each.key].id
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type
  tags     = merge(var.common_tags, each.value.tags)
}
