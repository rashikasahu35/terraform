# MySQL Flexible Server
resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = var.mysqldb_name
  location               = var.rg_location
  resource_group_name    = var.rg_name
  administrator_login    = var.mysql_admin_username
  administrator_password = var.mysql_admin_password
  backup_retention_days  = 7
  sku_name               = var.mysql_sku                                
  version                = var.mysql_version

  storage {
    size_gb = var.mysql_size
  }

  tags = {
    Environment : var.env
    ApplicationName = var.project_name
  }
}
