terraform {
  backend "s3" {
    bucket         = "s3-terraform-state-files-rashikasahu"
    key            = "terraform-state-files/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

