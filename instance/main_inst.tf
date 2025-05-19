#create instance 
resource "aws_security_group" "new_sec" {
  
}
resource "aws_instance" "terraform" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  #vpc_security_group_ids = [ "sg-070d43303c69203fa"]
  subnet_id = var.subnet_id 
  
  tags = {
    Name = var.ins_name
  }
}


