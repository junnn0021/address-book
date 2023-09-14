resource "aws_eip" "pub_a" {
  domain = "vpc"

  tags = {
    Name = "tf-eip-apne-2a"
  }
}