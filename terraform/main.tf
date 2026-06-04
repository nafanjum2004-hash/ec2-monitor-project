module "ec2" {
  source = "./modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  key_name       = var.key_name
}

module "iam" {
  source    = "./modules/iam"
  role_name = var.role_name
}

module "lambda" {
  source = "./modules/lambda"

  role_arn   = module.iam.role_arn
  lambda_zip = "lambda.zip"

  lambda_function_name = var.lambda_function_name
  lambda_handler       = var.lambda_handler
  lambda_runtime       = var.lambda_runtime
  lambda_timeout       = var.lambda_timeout
}