data "azurerm_client_config" "key_vault" {}

resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  tenant_id           = data.azurerm_client_config.key_vault.tenant_id
  sku_name            = "standard"
  tags = {
    Environment : var.env
    ApplicatioName = var.project_name
  }
}