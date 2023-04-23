terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "ecd3-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}