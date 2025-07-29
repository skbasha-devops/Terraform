resource "local_file" "f1" {
filename = var.filename1
content = "var.content"
}

resource "local_file" "f2" {
filename = var.filename2
content = "var.content"
}

resource "local_file" "f3" {
for_each = toset ( var.filename3)
filename = each.key
content = "var.content"
}


resource "local_file" "f4" {
filename = var.filename4.name
content = "test"
}


resource "local_file" "f5" {
filename = var.filename4.id
content = "test"
}


resource "local_file" "f6" {
filename = var.filename6[2]
content = "test"
}


resource "local_file" "f7" {
filename = var.filename7.id
content = "test"
}
