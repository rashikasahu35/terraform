resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location

  tags = {
    Environment     = var.env
    ApplicationName = var.project_name
  }
}
