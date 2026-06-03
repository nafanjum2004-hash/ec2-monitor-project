output "instance_ids" {
value = aws_instance.server[*].id
}
