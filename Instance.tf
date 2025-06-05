resource "aws_instance" "app_server_1" {
  ami           = "ami-0c02fb55956c7d316" 
  instance_type          = "t2.micro"
  subnet_id     = aws_subnet.subnet_az1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
}

resource "aws_instance" "app_server_2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_az2.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
}