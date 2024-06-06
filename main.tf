provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "b" {
  bucket = "dev-01-test-uat-qa"
  acl    = "private"

  tags = {
    Name        = "dev-01-test-uat-qa"
    Environment = "Dev"
  }
}

variable "region" {
}