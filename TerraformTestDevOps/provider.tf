terraform {
 
  required_version = "~>1.14.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0.0"
    }
  }

  backend "s3" {
    bucket       = "devopstest-terraform-s3bucket-nirmallya"
    key          = "file1/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}