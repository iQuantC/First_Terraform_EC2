terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terra_ec2" {
  ami                    = "ami-0427090fd1714168b"
  instance_type          = "t2.micro"
  key_name               = "ubuntu24key"
  vpc_security_group_ids = ["sg-040c1fca5fe860748"]
  tags = {
    "Name" = "ExampleTerraEC2"
  }
}

