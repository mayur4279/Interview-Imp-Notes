terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = var.my-access_key
  secret_key = var.my-secret_key   

}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }
}  

