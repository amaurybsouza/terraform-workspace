provider "aws" {
  version                 = "~> 2.59"
  region                  = "sa-east-1"
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile                 = "terraform-aws-project1"
}

resource "aws_instance" "web2" {
  ami           = "ami-077d5d3682940b34a"
  instance_type = "t2.micro"
}


