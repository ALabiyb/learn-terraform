terraform {
  cloud {
    organization = "learn-terraform-module-use"
    workspaces {
      name = "Created terraform module"
    }
  }



  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.49.0"
    }
  }
  required_version = ">= 1.1.0"
}

