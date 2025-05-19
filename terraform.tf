
terraform {
  backend "s3" {
    bucket = "terraform-practice-shreeya"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}



