resource "aws_s3_bucket" "b" {
  bucket = "hackathon-fiap-5dvp-grupo2"
  acl    = "private"

  tags = {
    Name        = "fiap-lab"
    Environment = "5dvp"
  }
}