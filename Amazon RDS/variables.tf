variable "region" {
  description = "region at aws"
  type = string
  default = "sa-east-1" 
}
variable "engine" {
  description = "name of the database engine"
  type = string
  default = "mysql"
}
variable "allocated_storage" {
  description = "disk space"
  type = number
  default = 20
}
variable "storage_type" {
  description = "type of the storage"
  type = string
  default = "gp2"
}
variable "username" {
  description = "Username for the master DB user."
  default = "databaseteste"
  type = string
}
variable "password" {
  description = "password of the database"
  default = " "
  type = string
}
variable "instance_class" {
  description = "some description"
  default = "db.t2.micro"
  type = string
}
variable "parameter_group_name" {
  description = "parameter"
  default = "default.mysql5.7"
  type = string
}
variable "engine_version" {
  description = "version"
  default = "5.7"
  type = number
}
variable "skip_final_snapshot" {
  description = "skip snapshot"
  default = "true"
  type = string
}
variable "identifier" {
  description = "The name of the RDS instance"
  default = "terraform-database-test"
  type = string
}
variable "port" {
  description = "The port on which the DB accepts connections"
  default = "3306"
  type = number
}
variable "name" {
  description = "The database name"
  default = "Mysqldatabase"
  type = string
}







