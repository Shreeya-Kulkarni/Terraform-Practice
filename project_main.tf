module "vpc" {
  source = "./vpc"
  vpcname = var.vpc_name
  cidr = var.cidr
  public_subnet = var.public_subnet
  private_subnet = var.private_subnet
  internet_gateway = var.internet_gateway
}

module "instance" {
  source = "./instance"
  ins_name = var.instance_name
  key_name = var.key_name
  ami = var.ami_name
  instance_type = var.instance_type
  subnet_id = module.vpc.subnet_id
}