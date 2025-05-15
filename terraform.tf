provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 for us-west-2
  instance_type = "t2.micro"
  key_name      = "new-key"

  tags = {
    Name = "HelloWorld"
  }
}