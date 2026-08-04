variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "tfstate_bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name for storing Terraform state"
}

variable "dynamodb_table_name" {
  type    = string
  default = "terraform-locks"
}

variable "github_username" {
  type        = string
  description = "Your GitHub username or org"
}

variable "github_repo" {
  type        = string
  description = "Your repo name"
}

variable "github_branch" {
  type    = string
  default = "main"
}
