terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}

terraform {
  # backend "s3" {
  #   bucket = "sriram-tf-backend"
  #   key    = "key/aws_infra"
  #   region = "us-east-1"
  #   # Replace this with your DynamoDB table name!
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
  backend "http" {
    address        = "http://localhost:5000/terraform_state/my_state"
    lock_address   = "http://localhost:5000/terraform_lock/my_state"
    lock_method    = "PUT"
    unlock_address = "http://localhost:5000/terraform_lock/my_state"
    unlock_method  = "DELETE"
  }
}