resource "aws_instance" "server" {
count = var.instance_count

ami           = var.ami_id
instance_type = var.instance_type

tags = {
Name = "Server-${count.index + 1}"
}
}
