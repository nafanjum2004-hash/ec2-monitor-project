resource "aws_lambda_function" "ec2_monitor" {

  function_name = "ec2-monitor-function"

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")

  role = aws_iam_role.lambda_role.arn

  handler = "lambda_function.lambda_handler"

  runtime = "python3.12"

  timeout = 30
}