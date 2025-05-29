provider "aws" {
  region = "ap-south-1"
}


module "networking" {
  source = "./modules/networking"
  vpc = lookup(var.vpc, terraform.workspace, "10.0.0.0/16")
  subnet1 = lookup(var.subnet1, terraform.workspace, "10.0.1.0/24")
  subnet2 = lookup(var.subnet2, terraform.workspace, "10.0.2.0/24")
}
module "ec2" {
  source = "./modules/ec2"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
  subnet_id = module.networking.subnet1_id  
}