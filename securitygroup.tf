resource "aws_security_group" "k8s" {
  #vpc_id      = aws_vpc.main.id
  name        = "k8s"
  description = "security group for k8s"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

