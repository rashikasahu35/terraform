variable "azure_subscription_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "env" {
  type = string
}

variable "rg_location" {
  type    = string
  default = "Central India"
}

variable "mysql_admin_username" {
  type = string
}

variable "mysql_admin_password" {
  type = string
  sensitive = true
}

variable "mysql_sku" {
  type    = string
  default = "B_Standard_B1ms"
}

variable "mysql_version" {
  type    = string
  default = "8.0.21"
}

variable "mysql_size" {
  type    = string
  default = "30"
}

variable "service_plan_os_type" {
  type    = string
  default = "Linux"
}

variable "service_plan_sku" {
  type    = string
  default = "B1"
}

variable "backend_storage_account_container_name" {
  type = string
}
variable "backend_storage_account_name" {
  type = string
}
variable "backend_terraform_key_name" {
  type = string
}