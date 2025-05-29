
variable "rg_location" {
  type = string
}
variable "rg_name" {
  type = string
} 
variable "project_name" {
  type    = string
}
variable "env" {
  type    = string
}
variable "mysqldb_name" {
  type    = string
}
variable "mysql_admin_username" {
  type = string
}
variable "mysql_admin_password" {
  type = string
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
