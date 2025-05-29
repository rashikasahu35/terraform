module "azure_rg" {
  source       = "./azure/resource_group"
  project_name = var.project_name
  env          = var.env
  rg_location  = var.rg_location
}
module "azure_acr" {
  source       = "./azure/acr"
  project_name = var.project_name
  env          = var.env
  rg_name      = "rg-${var.project_name}-${var.env}"
  rg_location  = var.rg_location
}
module "aws_ecr" {
  source       = "./aws/ecr"
  project_name = var.project_name
  env          = var.env
}
