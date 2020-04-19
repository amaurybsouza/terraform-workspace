provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "myprofile"
  region = var.region 
}
resource "aws_db_instance" "default" {
  allocated_storage = var.allocated_storage
  storage_type = var.storage_type
  engine = var.
  engine_version = 
  instance_class = 
  name = 
  username = 
  password = 
  parameter_group_name = 
}
