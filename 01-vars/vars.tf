variable "sample_string" {
  default = "Hello World"
}
## shell scripting equivalent sample_string="Hello World"

variable "sample_number" {
  default = 100
}

variable "sample_boolean" {
  default = true
}

# booleans are true or false

# booleans and numbers does not need to be quoted, only strings need to be quoted that to be with double quotes.
# terraform does not support for single quotes

### Variable Types
# so far we have seen is default variable type


# we have list variable type, meaning single variable can hold multiple values
variable "sample_list" {
  default = [
    100,
    "Hello",
    true,
    123
  ]
}


## data type inside the list does not matter in terraform

# we have a dictionary or map, meaning single variable will have multiple values, and each value is going to have a seperate name.

variable "sample_dict" {
  default = {
    number1 = 100
    string1 = "hello"
    number2 = 123
    boolean = true
  }
}

## this is the most preferred variable over the list when we declare the data.

variable "env" {}
variable "auto_num1" {}
variable "sample1" {}



