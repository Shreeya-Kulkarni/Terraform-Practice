provider "aws" {

   region = "ap-northeast-3"  
}

resource "aws_instance" "web" {
  ami           = "ami-06b6e5225d1db5f46"
  instance_type = "t3.nano"
  key_name = "id-rsa"

  tags = {
    Name = "HelloWorld"
  }
 
}