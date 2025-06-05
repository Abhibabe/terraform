resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
resource "aws_route_table_association" "subnet_az1_rt" {
  subnet_id      = aws_subnet.subnet_az1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "subnet_az2_rt" {
  subnet_id      = aws_subnet.subnet_az2.id
  route_table_id = aws_route_table.public_rt.id
}