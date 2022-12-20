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
    region = "ap-northeast-1"
  }
}

provider "aws" {
  assume_role {
#     role_arn     = "arn:aws:iam::534083224817:role/aws-service-role/support.amazonaws.com/AWSServiceRoleForSupport"
# #     session_name = "SESSION_NAME"
# #     external_id  = "EXTERNAL_ID"
  }
  region = "ap-northeast-1"
}
