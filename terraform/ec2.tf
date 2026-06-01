resource "aws_instance" "server1" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Server-1"
  }
}

resource "aws_instance" "server2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Server-2"
  }
}

resource "aws_instance" "server3" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Server-3"
  }
}