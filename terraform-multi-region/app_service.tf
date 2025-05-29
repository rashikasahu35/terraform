resource "azurerm_linux_web_app" "app_service_primary" {
  name                = "app-primary-${var.project_name}-${var.env}"
  resource_group_name = azurerm_resource_group.rg_primary.name
  location            = azurerm_resource_group.rg_primary.location
  service_plan_id     = azurerm_service_plan.service_plan_primary.id


  site_config {
    always_on = true
    application_stack {
      docker_image_name   = "nginx:latest"
      docker_registry_url = "https://index.docker.io"
    }
  }
  identity {
    type = "SystemAssigned"
  }
}
resource "azurerm_linux_web_app" "app_service_secondary" {
  name                = "app-secondary-${var.project_name}-${var.env}"
  resource_group_name = azurerm_resource_group.rg_secondary.name
  location            = azurerm_resource_group.rg_secondary.location
  service_plan_id     = azurerm_service_plan.service_plan_secondary.id


  site_config {
    always_on = true
    application_stack {
      docker_image_name   = "nginx:latest"
      docker_registry_url = "https://index.docker.io"
    }
  }
  identity {
    type = "SystemAssigned"
  }
}
