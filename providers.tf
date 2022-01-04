terraform {
  cloud {
      organization = "jraddon"
      workspaces {
          name = "resume-challenge-infra"
      }
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  profile = "default"
  region  = "${var.region}"
}