# resource "aws_instance" "ec2" {
#   ami                         = var.ami_id
#   instance_type               = var.instance_type
#   key_name                    = var.key_name
#   subnet_id                   = var.subnet_id
#   associate_public_ip_address = var.associate_public_ip_address

#   tags = merge(
#     {
#       Name = var.instance_name
#     },
#     var.tags
#   )

#   root_block_device {
#     volume_size           = var.root_volume_size
#     volume_type           = var.root_volume_type
#     delete_on_termination = true
#   }

#   # Attach the second volume
#   depends_on = [aws_ebs_volume.additional_volume]
# }

# resource "aws_ebs_volume" "additional_volume" {
#   count             = var.create_additional_volume ? 1 : 0
#   availability_zone = var.availability_zone
#   size              = var.additional_volume_size
#   type              = var.additional_volume_type
#   tags = merge(
#     {
#       Name = var.additional_volume_name
#     },
#     var.additional_volume_tags
#   )
# }

# resource "aws_volume_attachment" "attach_volume" {
#   device_name = var.additional_volume_device_name
#   volume_id   = aws_ebs_volume.additional_volume.id  
#   instance_id = aws_instance.ec2.id
#   force_detach = true
# }


resource "aws_instance" "ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )

  root_block_device {
    volume_size           = var.root_volume_size
    volume_type           = var.root_volume_type
    delete_on_termination = true
  }
}

resource "aws_ebs_volume" "additional_volume" {
  count             = var.create_additional_volume ? 1 : 0
  availability_zone = var.availability_zone
  size              = var.additional_volume_size
  type              = var.additional_volume_type
  tags = merge(
    {
      Name = var.additional_volume_name
    },
    var.additional_volume_tags
  )
}

resource "aws_volume_attachment" "attach_volume" {
  count       = var.create_additional_volume ? 1 : 0
  device_name = var.additional_volume_device_name
  volume_id   = aws_ebs_volume.additional_volume[0].id
  instance_id = aws_instance.ec2.id
  force_detach = true
}
