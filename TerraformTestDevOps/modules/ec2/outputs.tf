output "instance_ids" {
  value = [aws_instance.web1.id, aws_instance.web2.id]
}