variable "region" {
  description = "region at aws"
  type = string
  default = "sa-east-1" 
}
variable "name" {
  description = "name of the database"
  type = string
  default = amaury-database
}
variable "engine_name" {
  description = "name of the database engine"
  type = string
  default = "mysql"
}
variable "allocated_storage" {
  description = "disk space"
  type = number
  default = 5
}
variable "storage_type" {
  description = "type of the storage"
  type = string
  default = "gp2"
}




