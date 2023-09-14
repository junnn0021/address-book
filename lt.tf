resource "aws_launch_template" "web_pri" {
  name_prefix            = "tf-web-"
  image_id               = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]
  update_default_version = true
  key_name               = aws_key_pair.mykey.key_name
  user_data = base64encode(templatefile("${path.module}/userdata.tpl", {
    db_endpoint = aws_db_instance.tf_db.address
    db_name     = var.db_name
    username    = var.username
    password    = var.password
  }))

  depends_on = [aws_nat_gateway.nat_gw_pub_a, aws_db_instance.tf_db]

  lifecycle {
    create_before_destroy = true
  }
}