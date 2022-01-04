variable "bucket_name" {
  type = string
  description = "The name of the bucket."
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
}

variable "region" {
    type = string
    description = "The AWS Region that is to be used"
}