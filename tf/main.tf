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

resource "aws_kms_key" "some-key" {}
resource "aws_efs_file_system" "sharedstore" {
  creation_token = "asdf"

  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }

  kms_key_id                      = aws_kms_key.some-key.key_id
  encrypted                       = false
  performance_mode                = "maxIO"
}
