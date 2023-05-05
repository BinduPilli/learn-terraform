resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module - input -  ${var.input}"
  }
}

variable "input" {}
