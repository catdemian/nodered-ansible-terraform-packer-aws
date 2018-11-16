resource "aws_security_group" "sg1" {
  name        = "noderedVPC-sg1"
  vpc_id      = "${aws_vpc.noderedVPC.id}"
  description = "Allow 22 and 1880 ports"

  ingress {
    from_port       = 1880
    to_port         = 1880
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self            = true
  }
  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    self            = true
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "security_group_sg1" {
  value = "${aws_security_group.sg1.id}"
}
