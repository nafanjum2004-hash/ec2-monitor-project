output "project_name" {
value = "EC2 Monitor Project"
}

output "instance_ids" {
value = module.ec2.instance_ids
}

output "lambda_name" {
value = module.lambda.lambda_name
}
