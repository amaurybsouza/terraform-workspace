provider "aws" {
  region = "sa-east-1"
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "default-profile"
}
resource "aws_instance" "name" {
  
}
