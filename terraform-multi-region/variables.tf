variable "azure_subscription_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "env" {
  type = string
}

variable "location_primary" {
  type = string
  default     = "Central India"
}

variable "location_secondary" {
  type = string
  default     = "West US"
}

variable "resource_group_name" {
  type = string
  default     = "rg"
}

variable "acr_primary" {
  type = string
  default     = "acr-primary"
}
variable "acr_secondary" {
  type = string
  default     = "acr-secondary"
}
variable "service_plan_os_type" {
  type = string
  default = "Linux"
}
variable "service_plan_sku" {
  type    = string
  default = "B1"
}
