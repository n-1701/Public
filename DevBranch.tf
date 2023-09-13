//Gets data for CURRENT location

data "aws_ami" "my_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "name"
        values = ["al2023-ami-2023*"]
    }
}

resource aws_instance "myinst" {
    ami = data.aws_ami.my_ami.id
    instance_type = "t2.micro"
}