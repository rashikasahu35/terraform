resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  os_type             = var.service_plan_os_type
  sku_name            = var.service_plan_sku

  tags = {
    Environment : var.env
    ApplicationName = var.project_name
  }
}
output "service_plan_id" {
  value = azurerm_service_plan.service_plan.id
}
