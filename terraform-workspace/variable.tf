variable "ami" {
  default = "ami-09b0a86a2c84101e1"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}
variable "vpc" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "10.0.0.0/16"
    "stage" = "11.0.0.0/16"
    "prod" = "12.0.0.0/16"
  }
}
variable "subnet1" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "10.0.1.0/24"
    "stage" = "11.0.1.0/24"
    "prod" = "12.0.1.0/24"
  }
}
variable "subnet2" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "10.0.2.0/24"
    "stage" = "11.0.2.0/24"
    "prod" = "12.0.2.0/24"
  }
}
