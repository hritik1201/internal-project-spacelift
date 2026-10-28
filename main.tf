resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.aws_keypair
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  root_block_device {
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = var.instance_name
  }
}
