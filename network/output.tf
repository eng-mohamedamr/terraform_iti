output "vpc_id" {
    value = aws_vpc.test.id
}
output "elp_id" {
    value = aws_eip.nat_eip.id
}
output "public1_id" {
  value = aws_subnet.public1.id
}
output "aws_nat_gateway" {
  value = aws_nat_gateway.nat.id
}