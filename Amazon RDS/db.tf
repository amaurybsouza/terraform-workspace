provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "myprofile"
  region = var.region 
}
resource "aws_db_instance" "default" {
  allocated_storage = var.allocated_storage
  storage_type = var.storage_type
  engine = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class
  name = "mydb"
  username = var.username
  password = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot = var.skip_final_snapshot
}

