variable "cidr_block" {

  
}
variable "enable_dns_hostnames" {
    default = true
  
}
variable "enable_dns_support" {
    default = true
  
}
variable "common_tags" {

    default = {}
  
}

variable "project_name" {
  
}

variable "vpc_tags" {

    default = {}
  
}
variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidr" {
  type = list (string) # Ensure it's a list of strings

  validation {
    condition     = length(var.public_subnet_cidr) == 2  # Ensure exactly 2 CIDRs are provided
    error_message = "Please provide exactly 2 Public subnet CIDR blocks."
  }
}

variable "private_subnet_cidr" {
    type = list (string) # Ensure it's a list of strings

  validation {
    condition     = length(var.private_subnet_cidr) == 2  # Ensure exactly 2 CIDRs are provided
    error_message = "Please provide exactly 2 Private subnet CIDR blocks."
  }
  
}
variable "database_subnet_cidr" {
    type = list (string) # Ensure it's a list of strings

  validation {
    condition     = length(var.database_subnet_cidr) == 2  # Ensure exactly 2 CIDRs are provided
    error_message = "Please provide exactly 2 Private subnet CIDR blocks."
  }
}


variable "natgate_tags" {
    default = {}
  
}

variable "private_route_table_tags" {
    default = {}
  
}
variable "database_route_table_tags" {
    default = {}
  
}
variable "db_subnet_group_tags" {
    default = {}
  
}