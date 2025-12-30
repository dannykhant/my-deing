terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}

module "create_file" {
  source = "./file_creator"
  filename = "foo"
  content = "Hello, World!"
}

output "filepath" {
  value = module.create_file.filepath
}