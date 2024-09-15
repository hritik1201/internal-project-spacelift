variable "instance_name" {
  type = string
  default = "terraform-demo"
}

variable "secret_id" {
    type = string
    default ="5dUQxQkT2djrzNnzbtR5kEgw0m7hdaMRW+i+jh2F"
}
variable "access_id" {
  type = string
  default ="AKIATNVEVIKTQFWSAVCB"
}
variable "ami_id" {
  type = string
  default = "ami-0522ab6e1ddcc7055"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "aws_keypair" {
  type = string
  default = "my-key-pair"
}

variable "region" {
  type = string
  default = "ap-south-1"
}
