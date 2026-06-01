terraform {
  backend "s3" {
    bucket = "nafreen-terraform-state-bucket"
    key    = "ec2-monitor/terraform.tfstate"
    region = "ap-south-1"
  }
}