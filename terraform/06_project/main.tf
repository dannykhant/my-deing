resource "aws_s3_bucket" "tf_s3_test" {
    bucket = var.bucket_name
    tags = {
      environment = "dev"
      project     = "terraform-demo"
    }
}

locals {
  images = fileset(path.module, "images/**")
}

resource "aws_s3_object" "tf_s3_test_object" {
    bucket = aws_s3_bucket.tf_s3_test.bucket
    for_each = local.images
    key    = each.value
    source = "${path.module}/${each.value}"
}