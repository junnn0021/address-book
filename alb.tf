resource "aws_lb" "alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.sub_pub_a.id, aws_subnet.sub_pub_c.id]
  security_groups    = [aws_security_group.alb.id]

  tags = {
    Name = var.alb_name
  }
}


resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = var.alb_port
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "404: Page Not Found\n"
      status_code  = 404
    }
  }

  depends_on = [aws_lb.alb]
}


resource "aws_lb_target_group" "asg" {
  name_prefix          = var.target_group_name
  port                 = var.server_port
  protocol             = "HTTP"
  vpc_id               = aws_vpc.vpc.id
  deregistration_delay = 0

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  depends_on = [aws_lb_listener.http]
}


resource "aws_lb_listener_rule" "asg" {
  listener_arn = aws_lb_listener.http.arn
  priority     = 100

  condition {
    path_pattern {
      values = ["*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.asg.arn
  }

  depends_on = [aws_lb_listener.http]
}