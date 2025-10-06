module "rgs" {
  source      = "../../Modules/azurerm_resource_group"
  rg_details  = var.rg_details
 tags = local.common_tags

}

module "sql_server" {
    depends_on = [ module.rgs ]
  source             = "../../Modules/azurerm_sql_server"
  sql_server_details = var.sql_server_details
  tags        = local.common_tags

}

module "sql_db" {
    depends_on = [ module.sql_server ]
  source      = "../../Modules/azurerm_sql_database"
  db_details  = var.db_details
  tags = local.common_tags

}

# module "kv" {
#     depends_on = [ module.rgs ]
#   source      = "../../Modules/azurerm_key_vault"
#   kv_details  = var.kv_details
#   tags = local.common_tags
# }

module "acr" {
    depends_on = [ module.rgs ]
  source      = "../../Modules/azurerm_acr"
  acr_details = var.acr_details
  tags = local.common_tags

}

module "aks_cluster" {
    depends_on = [ module.rgs ]
  source          = "../../Modules/azurerm_aks"
  cluster_details = var.cluster_details
  tags     = local.common_tags
}
