provider "aws" {

   region = "us-west-1"  
}

resource "aws_instance" "web" {
  ami           = "ami-05e1c8b4e753b29d3"
  instance_type = "t2.micro"
  key_name = "shreeya-key"

  tags = {
    Name = "HelloWorld"
  }
 
}