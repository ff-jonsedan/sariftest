resource "aws_ssm_parameter" "parameter-foo" {
  #checkov:skip=CKV2_AWS_34:No need to encrypt
  name  = "/tf/${var.env}/foo"
  type  = "String"
  value = "SomeValue for env ${var.env}"
}

terraform {
  backend "local" {
  }

}

variable "env" {
  default = ""
  description = "What Env"
}
