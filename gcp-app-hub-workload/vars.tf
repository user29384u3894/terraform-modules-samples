variable "access_token" {
  type      = string
  sensitive = true
}
variable "app_id" {
  type = string
}
variable "env_id" {
  type = string
}
variable "res_id" {
  type = string
}
variable "project_id" {
  type = string
}
variable "region" {
  type = string
}
variable "gke_project_number" {
  type = string
}
variable "gke_name" {
  type = string
}
variable "namespace" {
  type = string
}
variable "create_service" {
  type    = bool
  default = true
}