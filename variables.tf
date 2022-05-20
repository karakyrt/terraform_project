variable "vpc_cidr_block" {
  type        = string
  default     = ""
  description = "this is s CIDR range for VPC"
}

variable "env" {
  type        = string
  default     = ""
  description = "this is an environment specification"
}

variable "app" {
  type        = string
  default     = ""
  description = "this represent application name"
}
//in this block we make this code used accross our applications

//cidr_blocks for aws_route_tables

// variables for 3 pub subnets

variable "pub_sub_1" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}

variable "pub_sub_2" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}

variable "pub_sub_3" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}

// variables for 3 private subnets

variable "pri_sub_1" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}

variable "pri_sub_2" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}

variable "pri_sub_3" {
  type        = string
  default     = ""
  description = "this is s CIDR range for subnet"
}