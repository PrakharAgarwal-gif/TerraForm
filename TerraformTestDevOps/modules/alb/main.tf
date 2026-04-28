resource "aws_security_group" "albsg1" {
  vpc_id = var.vpc_id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb" "alb1" {
  name = "myalbtest"
  subnets = var.subnets
  security_groups = [aws_security_group.albsg1.id]
}

resource "aws_lb_target_group" "tg1" {
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id

  health_check {
    path = "/"
  }
}

resource "aws_lb_listener" "lis1" {
  load_balancer_arn = aws_lb.alb1.arn
  port = 80

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tg1.arn
  }
}