# output "instance_id" {
#   value = aws_instance.this.id
# }

# output "data_volume_id" {
#   value = aws_ebs_volume.data_volume.id
# }

output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.ec2.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}

output "additional_volume_id" {
  description = "The ID of the additional EBS volume"
  value       = var.create_additional_volume ? aws_ebs_volume.additional_volume[0].id : null
}

#aws_ebs_volume.additional_volume.id