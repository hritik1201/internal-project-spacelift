resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow inbound SSH from a restricted CIDR only"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    cidr_blocks = [var.allowed_ssh_cidr]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  egress {
    description = "All outbound"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }
}
