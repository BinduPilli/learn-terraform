
resource "null_resource" "fruits" {
  //count = length(var.fruits)


 provisioner "local-exec" {
  //command = "echo fruit name - ${var.fruits[count.index]}"
  command = "echo ${length(var.fruits)}"
}

variable "fruits" {
  default = {
    apple = 10
    orange = 200
    banana = 100
  }
}

