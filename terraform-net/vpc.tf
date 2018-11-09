resource "aws_vpc" "noderedVPC" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "noderedVPC"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.noderedVPC.id}"
}

output "vpc_id" {
  value = "${aws_vpc.noderedVPC.id}"
}
