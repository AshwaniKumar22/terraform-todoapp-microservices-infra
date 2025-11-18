resource "azurerm_mssql_server" "sql_server" {
    for_each=var.sql_server_details
  name                         = each.value.sql_server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.admin_username
  administrator_login_password = each.value.admin_password
  minimum_tls_version          = each.value.minimum_tls_version

tags     = merge(var.common_tags, each.value.tags)
}