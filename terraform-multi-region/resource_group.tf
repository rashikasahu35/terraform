resource "azurerm_resource_group" "rg_primary" {
  name     = "rg-primary-${var.project_name}-${var.env}"
  location = var.location_primary
}

resource "azurerm_resource_group" "rg_secondary" {
  name     = "rg-secondary-${var.project_name}-${var.env}"
  location = var.location_secondary
}
