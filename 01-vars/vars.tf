variable "sample_string" {
  default = "Hello World"
}

## shell scripting equivalent sample_string="Hello World"

# to print in shell script we use echo command , following is the syntax in shell
# echo $sample_string

output "sample_string" {
  value = var.sample_string
}

# in above case we are printing just variable, if variable is a of some strings then following is the syntax.
# ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "Value of sample_string = ${var.sample_string}"
}


