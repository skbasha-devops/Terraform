				resource local_file f1 {
					filename = var.f1
					content = var.c1
				}
			
				variable f1{
					default = "abc.txt"
				}
				variable c1 {
					default = "default content"
				}
				output fa1{
					value = local_file.f1.id
				}
