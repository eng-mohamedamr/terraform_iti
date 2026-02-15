resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.test.id

  tags = {
    Name = "iti-gateway"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "public-nat-gateway"
  }

  depends_on = [aws_internet_gateway.gw]
}
