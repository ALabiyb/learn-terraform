terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.46.0"
    }
  }
}

variable "ami_value" {
  description = "Value of AMI"
}

variable "instance_value" {
  description = "Value of Instance"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = var.ami_value
  instance_type = var.instance_value
}