
# resource "aws_vpc" "my_vpc" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"
#   tags = {
#     Name = "my_vpc"
#   }
# }
# variable "cidr_block_public" {

#   default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  
# }

# variable "cidr_block_private" {

#   default = ["10.0.4.0/24", "10.0.5.0/24"]
# }

# resource "aws_subnet" "public_subnet" {
#   for_each = {for index, cidr in var.cidr_block_public: index => cidr}
#   vpc_id = aws_vpc.my_vpc.id
#   cidr_block = each.value
#   map_public_ip_on_launch = true
 
# }

# resource "aws_subnet" "private_subnet" {
#   for_each = {for index, cidr in var.cidr_block_private: index => cidr}
#   vpc_id = aws_vpc.my_vpc.id
#   cidr_block = each.value
#   map_public_ip_on_launch = false
 
# }