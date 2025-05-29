resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  service_plan_id     = var.service_plan_id


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
  tags = {
    Environment : var.env
    ApplicationName = var.project_name
  }
}
