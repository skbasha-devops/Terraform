variable "filename1" {
type = string
default = "command"
}


variable "filename2" {
type = number
default = 123456
}



variable "filename3" {
type = list(string)
default = ["1", "2", "3"]
}


variable "filename4" {
type = map(string)
default = {
name = "shaik"
id = "default_value"
}
}



variable "filename5" {
type = map(number)
default = {
id = 12345
number =124
}
}


variable "filename6" {
  type = tuple([string, number, bool, list(number)])
  default = ["basha", 1234, true, [1,2,3,4]]
}

variable "filename7" {
type = object( {
name = string
id = number
address = list(string)
})
default = { 
name = "command"
id = 4567
address = ["A.P", "Hyd", "Kurnool"]
}
}


variable "content" {
type = string
default = "abc.txt"
}
