provider "aws" {

   region = "ap-southeast-1a"  
}



resource "aws_instance" "web" {
  ami           = "ami-01938df366ac2d954"
  instance_type = "t2.micro"
  key_name = "id-rsa"

  tags = {
    Name = "HelloWorld"
  }
 
}