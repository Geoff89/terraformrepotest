terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0739f8cdb239fe9ae"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
