resource "aws_subnet" "sub_pri_a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "tf-sub-pri1-apne-2a"
  }
}

resource "aws_subnet" "sub_pri_c" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "tf-sub-pri2-apne-2c"
  }
}

resource "aws_route_table" "pri_a" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "tf-rtb-pri-a",
  }
}

resource "aws_route_table" "pri_c" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "tf-rtb-pri-c",
  }
}

resource "aws_route_table_association" "pri_a" {
  subnet_id      = aws_subnet.sub_pri_a.id
  route_table_id = aws_route_table.pri_a.id
}

resource "aws_route_table_association" "pri_c" {
  subnet_id      = aws_subnet.sub_pri_c.id
  route_table_id = aws_route_table.pri_c.id
}

resource "aws_route" "nat_gw_route_pri_a" {
  route_table_id         = aws_route_table.pri_a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw_pub_a.id
}

resource "aws_route" "nat_gw_route_pri_c" {
  route_table_id         = aws_route_table.pri_c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw_pub_a.id
}