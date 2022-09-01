provider "aws" {
  region = "us-east-1"
  access_key = "AKIA44B45YTBBRHGCMGH"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "mynewtestheredone"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
resource "aws_iam_user" "back1user" {
  name = "jenuser1"
}