output "vpc_id" {
  value = aws_vpc.valohai-vpc.id
}

output "queue_subnet" {
  value = aws_subnet.valohai_public_subnet
}

output "queue_sg" {
  value = aws_security_group.valohai-sg-queue.id
}
