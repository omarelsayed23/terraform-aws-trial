terraform {
  
  backend "s3" {
    bucket = "terraform-state-juno"
    key    = "dev/s3/terraform.tfstate" 
    region = "us-west-2"
    dynamodb_table = "terraform-state-locking"
    encrypt = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

}