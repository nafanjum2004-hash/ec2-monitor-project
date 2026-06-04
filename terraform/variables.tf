variable "aws_region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  default = 2
}

variable "ami_id" {
  default = "ami-02dd44faa40720bb8"
}

variable "key_name" {
  default = "my-key1"
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