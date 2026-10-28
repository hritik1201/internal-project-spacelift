variable "instance_name" {
  type    = string
  default = "terraform-demo"
}

variable "environment" {
  type    = string
  default = "demo"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_keypair" {
  type = string
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_id" {
  type = string
}

variable "allowed_ssh_cidr" {
  type        = string
  description = "Your IP in CIDR form, e.g. 203.0.113.10/32. Never use 0.0.0.0/0."

  validation {
    condition     = var.allowed_ssh_cidr != "0.0.0.0/0"
    error_message = "allowed_ssh_cidr must not be 0.0.0.0/0 — restrict SSH to your own IP."
  }
}
