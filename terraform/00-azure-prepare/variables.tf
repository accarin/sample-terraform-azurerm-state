# this file is used to defined what variables are required to be passed to the module
# you can define default values and validators where needed

variable "location" {
  type = string
}
variable "prefix" {
  type = string
}
variable "project" {
  type = string
}
variable "suffix" {
  type = string
}
variable "project_short_name" {
  type = string
}
variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = can(regex("^(dev|tst|int|prd)$", var.environment))
    error_message = "environment must be one of dev, tst, int, prd"
  }
}
