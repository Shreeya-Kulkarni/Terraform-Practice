variable "vpc_cidr" {
  
  default = "10.0.0.0/20"
}

variable "vpcname" {
  
  default = "spider"
}

variable "project_name" {
  
  default = "pluto"
}

variable "pub_cidr" {
  default = "10.0.0.0/16"
}

variable "pvt_cidr" {
  default = "10.0.2.0/16"
}




variable "instance_type" {
  default = "t2.micro"
  description = "this is basc instance"
}
