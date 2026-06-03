resource "aws_lambda_function" "ec2_monitor" {

  function_name = var.lambda_function_name

  filename         = var.lambda_zip
  source_code_hash = filebase64sha256(var.lambda_zip)

  role = var.role_arn

  handler = var.lambda_handler

  runtime = var.lambda_runtime

  timeout = var.lambda_timeout
}