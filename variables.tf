/*
variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}
*/

variable "region" {
  description = "The AWS region."
  default     = "us-east-1"
}

variable "region_list" {
  description = "AWS availability zones."
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami" {
  type = "map"
  default = {
    us-east-1 = "ami-0d729a60"
    us-west-1 = "ami-7c4b331c"
  }
  description = "The AMIs to use."
}
