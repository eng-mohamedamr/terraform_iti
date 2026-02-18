output "vpc_id" {
    value = aws_vpc.test.id
}
output "elp_id" {
    value = aws_eip.nat_eip.id
}
output "public1_id" {
  value = aws_subnet.public1.id
}
output "public2_id" {
  value = aws_subnet.public2.id
}
output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}
output "gateway_id" {
  value = aws_internet_gateway.gw.id
}