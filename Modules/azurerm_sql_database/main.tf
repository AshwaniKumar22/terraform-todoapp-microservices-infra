data "azurerm_mssql_server" "sql_server" {
  for_each=var.db_details
  name                = each.value.sql_server_name
  resource_group_name = each.value.rg_name
}

resource "azurerm_mssql_database" "db_details" {
for_each=var.db_details
  name         = each.value.db_name
  server_id    = data.azurerm_mssql_server.sql_server[each.key].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = each.value.max_size_gb
  sku_name     = "S0"
  enclave_type = "VBS"

  tags     = var.tags
}