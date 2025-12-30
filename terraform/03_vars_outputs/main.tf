resource "local_file" "filename1" {
  filename = "${var.filename}_${count.index}.txt"
  content  = "This is ${var.filename}..."
  count = var.count_num
}

locals {
  environment = "dev"
  config_folder = upper(local.environment)
  filepath = "${path.module}/configs/${local.config_folder}"
}

resource "local_file" "config_file" {
  filename = "${local.filepath}/foo.txt"
  content  = "This is foo.txt in ${local.config_folder} folder..."
}

output "config_file" {
  value = local_file.config_file.filename
}