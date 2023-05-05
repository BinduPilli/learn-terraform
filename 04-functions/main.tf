## convert lower case to upper case
variable "sample" {
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}


variable "sample1" {
  default = ["abc", "xyz"]
}

## print first value like var.sample[0] with a function

output "sample1" {
  value = upper(var.sample1, 0)
}

##

variable "sample2" {
  default = {
    xyz = 100
    abc = 200
  }
}

output "sample2" {
  value = lookup(var.sample2, "a1", "dummy")
}