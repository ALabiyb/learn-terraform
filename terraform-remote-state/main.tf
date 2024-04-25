terraform {
    cloud {
      organization = "munimdevops"
      workspaces {
        name = "firstremotestate"
      }
    }


  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.46.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "AppServer" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name = var.aws_instance_name
  }
}