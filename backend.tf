terraform {
    backend "s3" {
        bucket = "mesa-terraform-states-dev"
        key    = "valohai-poc"
        region = "us-west-2"
    }
}
