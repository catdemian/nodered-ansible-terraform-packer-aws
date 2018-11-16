resource "aws_subnet" "public-subnet-region" {
  vpc_id            = "${aws_vpc.noderedVPC.id}"
  cidr_block        = "${var.public_subnet_cidr}"
  availability_zone = "${var.availability_zones}"
  map_public_ip_on_launch = true
}

output "aws_subnet_output" {
  value = "${aws_subnet.public-subnet-region.id}"
}
