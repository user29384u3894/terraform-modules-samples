variable "text" {
  type = string
}
module "main" {
  source = "./echo"
  text   = var.text
}