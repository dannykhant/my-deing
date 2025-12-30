resource "local_file" "file" {
  filename = "${var.filename}.txt"
  content  = var.content
}