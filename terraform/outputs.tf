output "project_name" {
  value = "EC2 Monitor Project"
}

output "server1_id" {
  value = module.ec2.server1_id
}

output "server2_id" {
  value = module.ec2.server2_id
}

output "server3_id" {
  value = module.ec2.server3_id
}

output "lambda_name" {
  value = module.lambda.lambda_name
}