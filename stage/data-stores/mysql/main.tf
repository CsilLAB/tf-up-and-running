provider "aws" {
  region = "eu-west-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t2.micro"
  name = "example_database"
  username = "admin"
  password = var.db_password
  skip_final_snapshot = true
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-csillab"
    key = "stage/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "terraform-up-and-running-locks-csillab"
    encrypt = true
  }
}
