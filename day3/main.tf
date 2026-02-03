

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}


resource "aws_s3_bucket" "my_first_bucket" {
  bucket = "this-alok-jha-terraform-file-12345"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

