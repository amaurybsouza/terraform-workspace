provider "aws" {
  version                 = "~> 2.59"
  region                  = var.region
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile                 = "terraform-aws-project1"
}

resource "aws_instance" "web3" {
  ami           = "ami-077d5d3682940b34a"
  instance_type = "t2.micro"
}


