# //To create 3 instances, we copy multiple times -> Not good way

# # resource "aws_instance" "instance1" {
# # ami = "ami-02bb7d8191b50f4bb"
# # instance_type = "t2.micro"
# # }

# # resource "aws_instance" "instance2" {
# # ami = "ami-02bb7d8191b50f4bb"
# # instance_type = "t2.micro"
# # }

# # resource "aws_instance" "instance3" {
# # ami = "ami-02bb7d8191b50f4bb"
# # instance_type = "t2.micro"
# # } 

# //Following is a good way, but not best way to name resources

# # resource "aws_iam_user" "iam_users" {
# # name = "user_${count.index}"
# # count = 3
# # }

# //Following best way to name resources
# variable "user_names" {
#     type = list
#     default = ["Harry", "Ron", "Hermione"]
# }

# resource "aws_iam_user" "iam_users" {
# name = var.user_names[count.index]
# count = 3
# }   


