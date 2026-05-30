Project Overview

This project uses AWS Lambda and Boto3 to fetch EC2 instance details dynamically.

The Lambda function retrieves:

* EC2 Instance Name
* Instance ID
* Public IP Address
* Instance State

The project follows a modular architecture and includes CI/CD automation using GitHub Actions.

Project Flow

Lambda Function → Boto3 SDK → AWS EC2 API → Fetch EC2 Details

