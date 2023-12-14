resource "aws_s3_bucket" "s3_web" {
  bucket = "${var.app_name}-${terraform.workspace}"  
  
  website {
        index_document = "index.html"
        error_document = "index.html"
    }
} 
