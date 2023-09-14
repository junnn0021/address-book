resource "aws_nat_gateway" "nat_gw_pub_a" {
  allocation_id = aws_eip.pub_a.id
  subnet_id     = aws_subnet.sub_pub_a.id

  tags = {
    Name = "tf-nat-pub1-apne-2a"
  }

  depends_on = [aws_eip.pub_a]
}