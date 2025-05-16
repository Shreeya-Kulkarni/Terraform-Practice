provider "aws" {

   region = "ap-south-1"  
}

resource "aws_instance" "web" {
  ami           = "ami-06b6e5225d1db5f46"
  instance_type = "t2.micro"
  key_name = "mumbai-key"

  tags = {
    Name = "HelloWorld"
  }
 
}