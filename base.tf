/* This is a multi-line comment.  This is a multi-line comment.
This is a multi-line comment.  This is a multi-line comment.  This
is a multi-line comment.  This is a multi-line comment.
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
*/

# This is a single-line comment.
resource "aws_instance" "base" {
  ami           = "${lookup(var.ami, var.region)}"
  instance_type = "t2.micro"
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
