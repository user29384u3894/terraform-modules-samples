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
variable "gcs_bucket_name" {
  type = string
}
variable "principals" {
  type = set(string)
}