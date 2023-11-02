resource "aws_security_group" "webserver_sg" {
  name        = "webserver-sg"
  description = "Security Group for Webserver, allows Port 80 and 443"
  vpc_id      = "vpc-0f4bdac26ff125530" # Ersetzen Sie dies durch die ID Ihrer VPC

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver-sg"
  }
}
