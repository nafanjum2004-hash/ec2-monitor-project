resource "aws_lambda_function" "ec2_monitor" {

  function_name = "ec2-monitor-function"

  filename         = var.lambda_zip
  source_code_hash = filebase64sha256(var.lambda_zip)

  role = var.role_arn

  handler = "lambda_function.lambda_handler"

  runtime = "python3.12"

  timeout = 30
}



