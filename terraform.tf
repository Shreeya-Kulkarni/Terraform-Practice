provider "aws" {

   region = "ap-south-1"  
}



resource "aws_instance" "web" {
  ami           = "ami-0af9569868786b23a"
  instance_type = "t2.micro"
  key_name = "new-key"

  tags = {
    Name = "HelloWorld"
  }
}