
resource "azurerm_container_registry" "acr" {
  name                     = "acr${var.project_name}${var.env}"
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  sku                      = "Standard"
}
