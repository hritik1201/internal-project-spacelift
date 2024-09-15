resource "aws_instance" "ec2_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.aws_keypair
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
}
