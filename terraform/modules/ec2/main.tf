resource "aws_instance" "server1" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Server-1"
  }
}

resource "aws_instance" "server2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Server-2"
  }
}

resource "aws_instance" "server3" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Server-3"
  }
}

resource "aws_instance" "server4" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Server-4"
  }
}

resource "aws_instance" "server5" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Server-5"
  }
}