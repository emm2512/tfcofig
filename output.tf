output "ssh" {
  value = "ssh -i ${key_name}.pem ec2-user@${ip_address}"
}
