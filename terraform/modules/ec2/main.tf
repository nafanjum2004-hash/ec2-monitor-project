resource "aws_instance" "server" {
count = var.instance_count

ami           = var.ami_id
instance_type = var.instance_type
key_name = var.key_name

tags = {
Name = "Server-${count.index + 1}"
}
}
