variable "aws_region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "role_name" {
  default = "lambda-ec2-role"
}

variable "instance_count" {
default = 3
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


variable "key_name" {
  type    = string
  default = "my-key"
}