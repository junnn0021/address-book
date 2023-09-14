resource "aws_db_subnet_group" "tf_db" {
  name       = "tf-db"
  subnet_ids = [aws_subnet.sub_pri_a.id, aws_subnet.sub_pri_c.id]

  tags = {
    Name = "terraform db subnet group"
  }
}