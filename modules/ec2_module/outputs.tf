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
  value       = aws_ebs_volume.additional_volume[count.index]  #aws_ebs_volume.additional_volume.id
}
