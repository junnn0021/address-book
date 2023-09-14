resource "aws_autoscaling_group" "web" {
  name_prefix = "tf-asg-"

  launch_template {
    id      = aws_launch_template.web_pri.id
    version = "$Latest"
  }

  vpc_zone_identifier       = [aws_subnet.sub_pri_a.id, aws_subnet.sub_pri_c.id]
  target_group_arns         = [aws_lb_target_group.asg.arn]
  health_check_type         = "ELB"
  health_check_grace_period = "30"
  desired_capacity          = 4
  max_size                  = 8
  min_size                  = 2

  tag {
    key                 = "Name"
    value               = "tf-asg-web"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
    replace_triggered_by = [
    aws_launch_template.web_pri.latest_version]
  }

  depends_on = [aws_launch_template.web_pri, aws_lb_target_group.asg]
}