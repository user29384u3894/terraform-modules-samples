terraform {
}
variable "text" {
  type = string
}
output "output" {
  value = format("echo-%s", var.text)
}