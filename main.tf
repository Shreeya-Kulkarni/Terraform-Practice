terraform {
  backend "s3" {
    bucket = "terraform-practice-shreeya"
    region = "ap-south-1"
    key = "terraform.tfstate"
  }
}

resource "aws_vpc" "myvpc"{
cidr_block = var.vpc_cidr
    tags = {
      Name = var.vpcname
      project = var.project_name
    }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.pub_cidr
   tags = {
      Name = "${var.project_name}_public_subnet"
      project = var.project_name
    }
    map_public_ip_on_launch = true 
    availability_zone = "ap-south-1b"
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.pvt_cidr
   tags = {
      Name = "private_subnet"
      project = var.project_name
    }
    map_public_ip_on_launch = false
    availability_zone = "ap-south-1a"
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
      Name = "igw"
      project = var.project_name
    } 
}

resource "aws_route_table" "mytable" {
  vpc_id = aws_vpc.myvpc.id

  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

 tags = {
      Name = "Route_Table"
      project = var.project_name
    } 
}


data "aws_security_group" "mysg" {
    filter {
      name = "group_name"
      values = [ mysg  ]

    }
  
}

resource "aws_instance" "web" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = var.instance_type
  key_name = "id-rsa"
  vpc_security_group_ids = data.aws_security_group.mysg.id

  connection {
    type = "ssh"
    user = "root"
    password = password
    host = self.public_ip
  }

  provisioner "file"{
    source = "index.html"
    destination = "var/www/html/index.html"
    
}

  provisioner "local-exec" {
    command = "echo this task is successfull"
  }

  tags = {
    Name =  var.project_name
    
  }
 
}

