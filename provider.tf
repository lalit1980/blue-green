terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }
  }
}
provider "aws" {
  region  = "ap-southeast-1"
  shared_credentials_file = "/Users/lalit/.aws/credentials"
  profile = "terraform"
}
terraform {
  backend "s3" {
    bucket         = "golalit-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "golalit-terraform-up-and-running-locks"
    shared_credentials_file = "/Users/lalit/.aws/credentials"
    profile = "terraform"
  }
}

