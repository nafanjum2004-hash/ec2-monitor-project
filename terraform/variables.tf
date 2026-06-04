variable "aws_region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "key_name" {
  type    = string
  default = "my-key"
}

variable "ami_id" {
  default = "ami-07a00cf47dbbc844c"
}

variable "role_name" {
  default = "lambda-ec2-role"
}

variable "lambda_function_name" {
  default = "ec2-monitor-function"
}

variable "lambda_handler" {
  default = "lambda_function.lambda_handler"
}

variable "lambda_runtime" {
  default = "python3.12"
}

variable "lambda_timeout" {
  default = 30
}