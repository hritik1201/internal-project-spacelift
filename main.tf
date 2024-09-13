data "aws_vpc" "vpc_existing_id" {
  id = var.vpc_existing_id
}
data "aws_key_pair" "my_key" {
  key_name          = var.existing_key_name
  include_public_key = true
}
data "aws_security_group" "java_sg" {
  id   = var.existing_security_group
  vpc_id = data.aws_vpc.vpc_existing_id.id
}
# EC2 Instance
resource "aws_instance" "ubuntu_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.my_key.key_name
  vpc_security_group_ids = [data.aws_security_group.java_sg.id]
 
}

#add new chnages