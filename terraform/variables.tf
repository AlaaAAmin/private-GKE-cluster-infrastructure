variable "project_id" {
  type = string
}
variable "region" {
  type        = string
  description = "project resion"
}
variable "vpc_name" {
  type = string
}
variable "managed_subnet_region" {
  type = string
}
variable "restricted_subnet_region" {
  type = string
}
variable "managed_subnet_CIDR" {
  type = string
}
variable "restricted_subnet_CIDR" {
  type = string
}

#nat-gateway & cloud router
variable "nat_name" {
  type = string
}
variable "router_name" {
  type = string
}
variable "router_region" {
  type = string
}

#sercvice account
variable "sa_id" {
  type = string
}
variable "sa_Dname" {
  type = string
}
