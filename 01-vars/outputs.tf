
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

## Values from list
# Second value in list
output "sample_list2" {
  value = var.sample_list[1]
}
