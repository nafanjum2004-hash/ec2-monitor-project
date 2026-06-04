data "aws_security_group" "default" {
  name = "default"
}

resource "aws_instance" "server" {
count = var.instance_count

ami           = var.ami_id
instance_type = var.instance_type
key_name = var.key_name
vpc_security_group_ids = [data.aws_security_group.default.id]

tags = {
Name = "Server-${count.index + 1}"
}
}
