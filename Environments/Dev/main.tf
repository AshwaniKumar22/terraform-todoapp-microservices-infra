module "rgs" {
  source      = "../../Modules/azurerm_resource_group"
  rg_details  = var.rg_details
  common_tags = local.common_tags
  }

module "sql_server" {
    depends_on = [ module.rgs ]
  source             = "../../Modules/azurerm_sql_server"
  sql_server_details = var.sql_server_details
  common_tags = local.common_tags
}

module "sql_db" {
    depends_on = [ module.rgs, module.sql_server ]
  source      = "../../Modules/azurerm_sql_database"
  db_details  = var.db_details
  common_tags = local.common_tags
  }

module "kv" {
    depends_on = [ module.rgs ]
  source      = "../../Modules/azurerm_key_vault"
  kv_details  = var.kv_details
  common_tags = local.common_tags
}

module "acr" {
    depends_on = [ module.rgs ]
  source      = "../../Modules/azurerm_acr"
  acr_details = var.acr_details
  common_tags = local.common_tags
}

module "aks_cluster" {
    depends_on = [ module.rgs ]
  source          = "../../Modules/azurerm_aks_cluster"
  cluster_details = var.cluster_details
  common_tags = local.common_tags
}
