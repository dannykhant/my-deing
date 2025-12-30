resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

resource "local_sensitive_file" "bar" {
  content  = "bar!"
  filename = "${path.module}/bar.foo"
}