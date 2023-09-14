variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "server_port" {
  type = number
}

variable "instance_security_group_name" {
  type = string
}

variable "db_security_group_name" {
  type = string
}

variable "db_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "template_img" {
  type = string
}

variable "alb_name" {
  type = string
}

variable "target_group_name" {
  type = string
}

variable "alb_port" {
  type = number
}

variable "alb_security_group_name" {
  type = string
}