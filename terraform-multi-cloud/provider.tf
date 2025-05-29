provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}
provider "aws" {
  region = "ap-south-1"
}