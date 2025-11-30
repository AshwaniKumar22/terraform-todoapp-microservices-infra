rg_details = {
  rgs = {
    rg_name  = "rg_todoapp"
    location = "central india"
    
    }
}

sql_server_details = {
  sql1 = {
    sql_server_name     = "todoapp-sql-server1322"
    rg_name             = "rg_todoapp"
    location            = "central india"
    version             = "12.0"
    admin_username      = "devopsadmin"
    admin_password      = "P@ssword@123"
    minimum_tls_version = "1.2"
  

  }
}

db_details = {
  db1 = {
    sql_server_name = "todoapp-sql-server1322"
    rg_name         = "rg_todoapp"
    db_name         = "todoapp_db1322"
    collation       = "SQL_Latin1_General_CP1_CI_AS"
    max_size_gb     = "2"
    license_type    = "LicenseIncluded"
    sku_name        = "S0"
    enclave_type    = "VBS"
  }
}

kv_details = {
  kv1 = {
    kv_name  = "todoapp-kv1322"
    rg_name  = "rg_todoapp"
    location = "central india"
  }
}

acr_details = {
  acr1 = {
    acr_name      = "todoappacr2213"
    rg_name       = "rg_todoapp"
    location      = "central india"
    sku           = "Premium"
    admin_enabled = false
   }
}

cluster_details = {
  dev_cluster = {
    aks_cluster_name = "todoapp_aks_cluster"
    rg_name          = "rg_todoapp"
    location         = "central india"
    dns_prefix       = "todoappaks"
    node_pool_name   = "devpool"
    node_count            = 1
    vm_size          = "standard_b2s_v2"
    identity_type    = "SystemAssigned"
  }
}
