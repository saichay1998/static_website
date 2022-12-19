# S3 bucket for redirecting
resource "aws_s3_bucket" "root_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"
  policy = data.aws_iam_policy_document.allow_public_s3_read.json

  website {
    index_document = "index.html"
    error_document = "404.html"
  }


  tags = {
    use        = "website host"
  }
}

# S3 Allow Public read access as data object
data "aws_iam_policy_document" "allow_public_s3_read" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"

    actions = [
      "s3:GetObject"
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      "arn:aws:s3:::${var.bucket_name}/*"
    ]
  }
}
