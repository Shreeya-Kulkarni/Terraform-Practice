provider "aws" {
  region = "us-west-2"
}




resource "aws_instance" "web" {
  ami = "ami-08962a4068733a2b6"  # Amazon Linux 2
  instance_type = "t2.micro"
  key_name = "new-key"

  tags = {
    Name = "HelloWorld"
  }
}