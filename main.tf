
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localhost:4566"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-1e749f67"
  instance_type = var.instance_type
}

output "instance_id" {
  value = aws_instance.devops_server.id
}

output "instance_public_ip" {
  value = aws_instance.devops_server.public_ip
}

