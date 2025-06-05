resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "subnet_az1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1"
}

  tags = {
    Name = "Public Subnet"
}
resource "aws_subnet" "privatesub" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.cidr_private

  tags = {
    Name = "Pri Subnet"
  }
}
