resource "aws_route_table" "public-subnet-in-region" {
  vpc_id = "${aws_vpc.noderedVPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "public-subnet-in-region" {
  subnet_id      = "${aws_subnet.public-subnet-region.id}"
  route_table_id = "${aws_route_table.public-subnet-in-region.id}"
}


