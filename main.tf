variable "input" {
  type = string
}
module "main" {
  source = "./echo"
  input  = var.input
}
output "output" {
  value = module.main.output
}