# resource "aws_instance" "this" {
#   ami           = var.ami
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   tags = merge(
#     {
#       "Name" = var.name
#     },
#     var.tags
#   )

#   root_block_device {
#     volume_size = var.root_volume_size
#     volume_type = var.root_volume_type
#   }

#   dynamic "ebs_block_device" {
#     for_each = var.additional_volumes
#     content {
#       device_name = ebs_block_device.value.device_name
#       volume_size = ebs_block_device.value.size
#       volume_type = ebs_block_device.value.type
#     }
#   }
# }

# resource "aws_instance" "this" {
#   ami           = var.ami
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   root_block_device {
#     volume_size = var.root_volume_size
#     volume_type = var.root_volume_type
#   }

#   tags = merge(var.tags, {
#     Name = var.instance_name
#   })
# }

# resource "aws_ebs_volume" "data_volume" {
#   availability_zone = aws_instance.this.availability_zone
#   size              = var.data_volume_size
#   type              = var.data_volume_type
# }

# resource "aws_volume_attachment" "data_volume_attachment" {
#   device_name = "/dev/sdh"
#   volume_id   = aws_ebs_volume.data_volume.id
#   instance_id = aws_instance.this.id
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

  # Attach the second volume
  depends_on = [aws_ebs_volume.additional_volume]
}

resource "aws_ebs_volume" "additional_volume" {
  availability_zone = var.availability_zone
  size              = var.additional_volume_size != null ? var.additional_volume_size : null
  type              = var.additional_volume_type
  tags = merge(
    {
      Name = var.additional_volume_name
    },
    var.additional_volume_tags
  )
}

resource "aws_volume_attachment" "attach_volume" {
  device_name = var.additional_volume_device_name
  volume_id   = aws_ebs_volume.additional_volume.id
  instance_id = aws_instance.ec2.id
  force_detach = true
}