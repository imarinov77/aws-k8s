output "k8s_master" {
  value = aws_instance.k8s_master.public_ip
}

output "k8s_workers" {
  value = aws_instance.k8s_worker[*].public_ip
}

resource "local_file" "ansible_inventory" {
  content = templatefile("inventory.tmpl",
    {
      k8s-master_ip = aws_instance.k8s_master.public_ip,
      k8s-nfs_ip    = aws_instance.k8s_nfs.public_ip,
      k8s-worker_ip = aws_instance.k8s_worker[*].public_ip,
      linux_user    = var.linux_user
    }
  )
  filename = "hosts"
}

