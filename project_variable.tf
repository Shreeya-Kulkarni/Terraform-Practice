variable "instance_name"{
    default = "new_instance"
}

variable "key_name" {
  default = "id-rsa"
}

variable "ami_name" {
  default = "ami-0f9de6e2d2f067fca"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_name" {
  default = "newvpc"
}

variable "cidr" {
  default = "172.25.0.0/16"
}

variable "public_subnet" {
  default = "public_subnet"
}

variable "private_subnet" {
  default = "private_subnet"
}

variable "internet_gateway" {
  default = "internet_gateway"
}