resource "aws_instance" "k8s-master" {
  ami           = var.amis[var.aws_region]
  instance_type = "t3.small"
  key_name = "aws-key"
  vpc_security_group_ids = [aws_security_group.k8s.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 20
    volume_type = "gp2"
  }
  tags = { Name = "k8s-master" }
}

resource "aws_instance" "k8s-worker" {
  ami           = var.amis[var.aws_region]
  count = 2
  instance_type = "t3.small"
  key_name = "aws-key"
  vpc_security_group_ids = [aws_security_group.k8s.id]
  root_block_device {
    delete_on_termination = true
    volume_size = 20
    volume_type = "gp2"
  }
  tags = { Name = "k8s-worker-${count.index}" }
}
