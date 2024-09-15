variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "secret_id" {
  type    = string
  default = "5dUQxQkT2djrzNnzbtR5kEgw0m7hdaMRW+i+jh2F"

}
variable "access_id" {
  type    = string
  default = "AKIATNVEVIKTQFWSAVCB"

}
variable "ami_id" {
  type    = string
  default = "ami-0522ab6e1ddcc7055"

}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "vpc_existing_id" {
  type    = string
  default = "vpc-0e5232ada44ab81e6"

}
variable "existing_key_name" {
  type    = string
  default = "my-key-pair"

}
variable "existing_security_group" {
  type    = string
  default = "sg-0c84402213547a164"
}

#pusht