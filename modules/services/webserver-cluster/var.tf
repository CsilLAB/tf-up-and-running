variable "server_port" {
  description = "HTTP requests"
  type = number
  default = 8080
}

variable "cluster_name" {
  description = "The name to use all cluster resources"
  type = string
}

variable "db_remote_state_bucket" {
  description = ""
  type = string
}

variable "db_remote_state_key" {
  description = ""
  type = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}
