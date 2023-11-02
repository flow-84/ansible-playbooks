
resource "aws_instance" "ubuntu" {
           ami           = "ami-06dd92ecc74fdfb36" # Ersetzen Sie dies durch die neueste Ubuntu AMI in Ihrer Region
           instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.webserver_sg.id]
                key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = "UbuntuWebServer"
  }
}
