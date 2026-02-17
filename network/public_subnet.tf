resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = var.public1_cidr_block
  availability_zone = var.az_1

  tags = {
    Name = var.public1_tag
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = var.public2_cidr_block
  availability_zone = var.az_2

  tags = {
    Name = var.public2_tag
  }
}