resource "aws_s3_bucket" "s3_web" {
  bucket = "${var.s3_bucket}-${terraform.workspace}"  
  
  website {
        index_document = "index.html"
        error_document = "index.html"
    }
} 