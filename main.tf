variable "input" {
  type = string
}
module "main" {
  source = "./echo"
  input  = var.input
}