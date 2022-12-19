terraform {


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "mystatestoringbucket"
    key    = "state/terraform.tfstate"
    region = "ap-notheast-1"
  }
}

provider "aws" {
  region = "ap-notheast-1"
}
