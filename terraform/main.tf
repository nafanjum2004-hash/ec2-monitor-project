module "ec2" {
  source = "./modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"

  role_arn             = module.iam.role_arn
  lambda_zip           = var.lambda_zip
  lambda_function_name = var.lambda_function_name
  lambda_handler       = var.lambda_handler
  lambda_runtime       = var.lambda_runtime
  lambda_timeout       = var.lambda_timeout
}