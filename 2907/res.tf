locals {
  filename_upper = [for value in var.filename : upper(value)]
  map_keys      = [for key, value in var.filnamemap : upper(key)]
  map_values    = [for key, value in var.filnamemap : upper(value)]
  map_upper     = {for key, value in var.filnamemap : key => upper(value)}
}

variable "filename" {
  type    = list(string)
  default = ["a", "b", "c"]
}

variable "filnamemap" {
  type    = map(string)
  default = {
    name    = "a"
    address = "b"
  }
}

resource "local_file" "f1" {
  count    = length(local.filename_upper)  # Changed to use local
  filename = local.filename_upper[count.index]  # Changed to use local
  content  = "test"
}

output "a1" {
  value = local.filename_upper
}

output "a2" {
  value = local.map_keys
}

output "a3" {
  value = local.map_values
}

output "a4" {
  value = local.map_upper
}
