terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }

  backend "s3" {    #here backend means state
    bucket = "81s-remote-state1"
    key    = "expense-eks-alb"  
    region = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
} 


 