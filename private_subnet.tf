resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet_1"
  }
}
resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet_2"
  }
}