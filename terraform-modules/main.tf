module "resource_group" {
  source       = "./modules/resource_group"
  project_name = var.project_name
  env          = var.env
  rg_name      = "rg-${var.project_name}-${var.env}"
  rg_location  = var.rg_location
}

module "service_plan" {
  source               = "./modules/service_plan"
  project_name         = var.project_name
  env                  = var.env
  rg_name              = "rg-${var.project_name}-${var.env}"
  rg_location          = var.rg_location
  service_plan_os_type = var.service_plan_os_type
  service_plan_sku     = var.service_plan_sku
  service_plan_name    = "sp-${var.project_name}-${var.env}"
}

module "mysqldb" {
  source               = "./modules/mysqldb"
  project_name         = var.project_name
  env                  = var.env
  rg_name              = "rg-${var.project_name}-${var.env}"
  rg_location          = var.rg_location
  mysql_admin_username = var.mysql_admin_username
  mysql_admin_password = var.mysql_admin_password
  mysql_sku            = var.mysql_sku
  mysql_version        = var.mysql_version
  mysql_size           = var.mysql_size
  mysqldb_name         = "mysqldb-${var.project_name}-${var.env}"
}

module "key_vault" {
  source         = "./modules/key_vault"
  project_name   = var.project_name
  env            = var.env
  rg_name        = "rg-${var.project_name}-${var.env}"
  rg_location    = var.rg_location
  key_vault_name = "kv-${var.project_name}-${var.env}"
}

module "app_service" {
  source           = "./modules/app_service"
  project_name     = var.project_name
  env              = var.env
  rg_name          = "rg-${var.project_name}-${var.env}"
  rg_location      = var.rg_location
  service_plan_id  = module.service_plan.service_plan_id
  app_service_name = "app-${var.project_name}-${var.env}"
}

module "app_insights" {
  source            = "./modules/app_insights"
  project_name      = var.project_name
  env               = var.env
  rg_name           = "rg-${var.project_name}-${var.env}"
  rg_location       = var.rg_location
  app_insights_name = "app-insights-${var.project_name}-${var.env}"
}
