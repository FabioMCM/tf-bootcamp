resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = merge(
    {
      "Name" = var.name
    },
    var.tags
  )

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }

  dynamic "ebs_block_device" {
    for_each = var.additional_volumes
    content {
      device_name = ebs_block_device.value.device_name
      volume_size = ebs_block_device.value.size
      volume_type = ebs_block_device.value.type
    }
  }
}
