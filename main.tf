terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
}

# Create a VPC
module "vpc" {
  source = "github.com/exmini673/tf-aws-vpc.git"
}

# Create a VPC
module "keypair" {
  source = "github.com/exmini673/tf-aws-keypair.git"
}