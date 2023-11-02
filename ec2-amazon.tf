

resource "aws_instance" "amazon_linux" {
           ami           = "ami-0d318f1f104612755" # Ersetzen Sie dies durch die neueste Amazon Linux AMI in Ihrer Region
           instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.webserver_sg.id]
                key_name = aws_key_pair.deployer.key_name


  tags = {
    Name = "AmazonLinuxWebServer"
  }
}
