terraform {

    backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
  
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

