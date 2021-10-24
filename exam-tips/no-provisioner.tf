locals {
  value_list    =   ["ahmed", "majid", "mike"]
}

output "list_of_names" {
  value = local.value_list
}