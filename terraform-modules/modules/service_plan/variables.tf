variable "project_name" {
  type    = string
}

variable "env" {
  type    = string
}
variable "rg_location" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "service_plan_os_type" {
  type = string
  default = "Linux"
}

variable "service_plan_sku" {
  type = string
  default = "Linux"
}
variable "service_plan_name" {
  type = string
}
