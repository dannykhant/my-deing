resource "local_file" "foo" {
  filename = "${path.module}/foo_${count.index}.txt"
  content = "Hello, Danny!"
  count = 3
}

resource "local_sensitive_file" "bar" {
  filename = "${path.module}/bar.txt"
  content  = "This is a sensitive content." 
}