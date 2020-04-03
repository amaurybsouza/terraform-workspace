# Create a bucket S3
provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "myprofile"
  region = "${var.region}"
}
# Create a AWS S3 Bucket
resource "aws_s3_bucket" "armazenamento" {
    bucket = "my-bucket-terraform-test-44"
    acl = "private"

    tags = {
        Name = "my-bucket-test"
        Environment = "Dev"
    }    
}