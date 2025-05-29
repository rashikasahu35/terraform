terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-files"
    storage_account_name = "saterraformfilesrashika"
    container_name       = "terraform-state-files"
    key                  = "terraform.tfstate"
  }
}