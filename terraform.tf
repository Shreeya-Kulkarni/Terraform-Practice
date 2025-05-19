
terraform {
  backend "s3" {
    bucket = "terraform-new-us-east-1"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}



