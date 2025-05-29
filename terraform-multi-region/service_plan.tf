resource "azurerm_service_plan" "service_plan_primary" {
  name                = "sp-primary-${var.project_name}-${var.env}"
  resource_group_name = azurerm_resource_group.rg_primary.name
  location            = azurerm_resource_group.rg_primary.location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku
}

resource "azurerm_service_plan" "service_plan_secondary" {
  name                = "sp-secondary-${var.project_name}-${var.env}"
  resource_group_name = azurerm_resource_group.rg_secondary.name
  location            = azurerm_resource_group.rg_secondary.location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku
}
