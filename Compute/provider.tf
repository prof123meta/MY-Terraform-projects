terraform {
  required_version = " ~> 1.3.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "  "
  secret_key = "  "
}

# Create a VPC
resource "aws_vpc" "My-Terraform-VPC" {
  cidr_block       = "11.0.0.0/16"
  

  tags = {
    Name = "My-terra-vpc"
  }
}