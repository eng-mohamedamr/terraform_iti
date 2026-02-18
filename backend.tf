terraform {
  backend "s3" {
    bucket         = "bucket-for-iti-project"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "terraform-state-locks"  #to initilaize the state.lock on dynamo db
  }
}