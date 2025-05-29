
resource "azurerm_container_registry" "acr_primary" {
  name                     = "acrprimary${var.project_name}${var.env}"
  resource_group_name      = azurerm_resource_group.rg_primary.name
  location                 = azurerm_resource_group.rg_primary.location
  sku                      = "Standard"
}

resource "azurerm_container_registry" "acr_secondary" {
  name                     = "acrsecondary${var.project_name}${var.env}"
  resource_group_name      = azurerm_resource_group.rg_secondary.name
  location                 = azurerm_resource_group.rg_secondary.location
  sku                      = "Standard"
}
