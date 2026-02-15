resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet_2"
  }
}