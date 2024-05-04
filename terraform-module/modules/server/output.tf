
output "public_ip" {
  value = aws_instance.web.public_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

output "size" {
    description = "instance type of the server from server module"
    value = aws_instance.web.instance_type
}