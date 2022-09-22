output "k8s-master" {
  value = aws_instance.k8s-master.public_ip
}

output "k8s-workers" {
  value = aws_instance.k8s-worker.*.public_ip
}

resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  k8s-master_ip = aws_instance.k8s-master.public_ip,
  k8s-worker_ip = aws_instance.k8s-worker.*.public_ip,
  linux_user = var.linux_user
 }
 )
 filename = "hosts"
}

