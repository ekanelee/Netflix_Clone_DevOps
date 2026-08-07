terraform {
  # required_version = "~> 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
  backend "s3" {
    bucket         = "netflix-clone-devops-tfstate-ekane"
    key            = "netflix-clone/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
provider "aws" {
  region = var.aws-region
}