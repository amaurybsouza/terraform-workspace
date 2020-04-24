provider "aws" {
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "myprofile"
  region = var.region
}
data "aws_kms_secret" "rds-secret" {
  "secret" {
    name = "master_password"
    payload = "payload value here"
  }
}
resource "aws_db_instance" "default" {
  allocated_storage = var.allocated_storage
  storage_type = var.storage_type
  engine = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class
  name = var.name
  username = var.username
  password = "${data.aws_kms_secret.rds-secret.master_password}"
  port = var.port
  identifier = var.identifier
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot = var.skip_final_snapshot
}
recurso  " aws_kms_key "  " chave-rds " {
    description =  " chave para criptografar senha rds "
  tags {
    Nome =  " my-rds-kms-key "
  }
}
recurso  " aws_kms_alias "  " rds-kms-alias " {
  target_key_id =  " $ { aws_kms_key . rds-key . id } "
  nome =  " alias / rds-kms-key "
}