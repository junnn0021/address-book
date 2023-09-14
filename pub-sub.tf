resource "aws_subnet" "sub_pub_a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "tf-sub-pub1-apne-2a"
  }
}

resource "aws_subnet" "sub_pub_c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "tf-sub-pub2-apne-2c"
  }
}

resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "tf-rtb-pub",
  }
}

resource "aws_route_table_association" "pub_a" {
  subnet_id      = aws_subnet.sub_pub_a.id
  route_table_id = aws_route_table.rtb.id
}

resource "aws_route_table_association" "pub_c" {
  subnet_id      = aws_subnet.sub_pub_c.id
  route_table_id = aws_route_table.rtb.id
}