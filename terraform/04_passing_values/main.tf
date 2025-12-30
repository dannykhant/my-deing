terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}

resource "local_file" "file" {
    filename = "${var.filename}.txt"
    content  = "This is a ${var.filename} file."
}   