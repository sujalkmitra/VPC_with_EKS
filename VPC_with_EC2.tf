provider "aws" {
  region = var.location
}

resource "aws_instance" "demo-server" {
  ami                         = var.os_name
  key_name                    = var.key
  instance_type               = var.instance-type
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
}

module "eks" {
  source = "./eks"
}
