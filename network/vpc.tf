resource "aws_vpc" "test" {
  cidr_block       = var.vpc_cidr_block 
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_tag
  }
}