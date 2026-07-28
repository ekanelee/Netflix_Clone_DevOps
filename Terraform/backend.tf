terraform {
  required_version = "~> 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-state-ekane"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = var.aws-region
}