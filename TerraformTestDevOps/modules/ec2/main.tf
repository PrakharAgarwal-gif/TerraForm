resource "aws_security_group" "ec2sg1" {
  vpc_id = var.vpc_id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    security_groups = [var.alb_sg]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    security_groups = [var.alb_sg]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnets[0]

  vpc_security_group_ids = [aws_security_group.ec2sg1.id]

  user_data = <<EOF
    #!/bin/bash
    yum install -y nginx
    systemctl start nginx
    echo "hello from instance 1" > /usr/share/nginx/html/index.html
    EOF
}

resource "aws_instance" "web2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnets[1]

  vpc_security_group_ids = [aws_security_group.ec2sg1.id]

  user_data = <<EOF
    #!/bin/bash
    yum install -y nginx
    systemctl start nginx
    echo "hello from instance 2" > /usr/share/nginx/html/index.html
    EOF
    }

resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = var.tg_arn
  target_id        = aws_instance.web1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = var.tg_arn
  target_id        = aws_instance.web2.id
  port             = 80
}