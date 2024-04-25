output "aws_instance_name" {
  description = "Name of the EC2 Instance"
  value = aws_instance.AppServer.tags
}

output "aws_instance_id" {
  description = "ID of the EC2 Instance"
  value = aws_instance.AppServer.id
}

output "aws_instance_public_ip" {
  description = "Public Ip Address of EC2 Instance"
  value = aws_instance.AppServer.public_ip
}