resource "azurerm_application_insights" "application_insights" {
  name                = var.app_insights_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  application_type    = "web"

  tags = {
    Environment : var.env
    ApplicationName = var.project_name
  }
}
