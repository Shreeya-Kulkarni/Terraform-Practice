terraform {
  backend "s3" {
    bucket = "terraform-practice-shreeya"
    region = "ap-south-1"
  }
}




provider "aws" {

   region = "ap-south-1"  
}

resource "aws_instance" "web" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t3.nano"
  key_name = "id-rsa"
  vpc_security_group_ids = [ "sg-0491e5dd427a715ed" ]

  tags = {
    Name = "HelloWorld"
  }
 
}