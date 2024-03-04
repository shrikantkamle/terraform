variable usersage {
    type = map
    default = {
        shrikant = 35
        pooja = 32
        shreeja = 6
    }
}

variable usersname {
    type = list
    default = ["shrikant","pooja","shreeja"]
}

# output "userage" {
#     value = "My name is ${var.usersname[0]}"
  
# }


output "family" {
    value = <<EOT
    My name is ${var.usersname[0]} and my age is ${lookup(var.usersage,"${var.usersname[0]}")}
    My wife's name  is ${var.usersname[1]} and her age is ${lookup(var.usersage,"${var.usersname[1]}")}
    EOT
  
}