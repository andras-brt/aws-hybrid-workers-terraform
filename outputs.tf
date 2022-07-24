data "aws_caller_identity" "current" {}

/*output "valohai_queue_public_ip" {
  value = "${module.EC2.valohai-queue-public-ip}"
}

output "valohai_queue_private_ip" {
  value = "${module.EC2.valohai-queue-private-ip}"
}

output "master_iam" {
  value = "${module.IAM_Master.master_iam}"
}

output "secret_name" {
  value = "${module.EC2.secret_name}"
}*/