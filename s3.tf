# S3 bucket for website.
resource "aws_s3_bucket" "cloud_resume_bucket" {
  bucket = "${var.bucket_name}"
  acl = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json
  website {
      index_document = "index.html"
      error_document = "index.html"
  }

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000

  }
}
