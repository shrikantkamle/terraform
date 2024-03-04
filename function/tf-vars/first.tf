variable age{
    type = string
}

variable username{
    type = string
}

output print{
    value = "My name is ${var.username}. My age is ${var.age}"
}