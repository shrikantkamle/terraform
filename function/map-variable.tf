variable usersage {
    type = map
    default = {
        shrikant = 35
        pooja = 32
        shreeja = 6
    }
}

variable usersname {
    type = string
}

output "userage" {
    value = "My name is ${var.usersname} and my age is ${lookup(var.usersage,"${var.usersname}")}."
  
}