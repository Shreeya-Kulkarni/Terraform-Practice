provider "aws" {

   region = "us-west-2"  
}



resource "aws_instance" "web" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  key_name = "new-key"

  tags = {
    Name = "HelloWorld"
  }
}