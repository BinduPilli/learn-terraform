
resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value["count"]}"
    //command = "echo ${length(var.fruits)}"
  }

}

variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    orange = {
      name = "orange"
      count = 200
    }
    banana = {
      name = "banana"
      count = 100
    }
  }
}

// for-each on a list
variable "vegetables" {
  default = ["carrot", "capsicum"]
}

resource "null_resource" "vegetables" {

  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo vegetables name - ${each.key}"
  }

}

