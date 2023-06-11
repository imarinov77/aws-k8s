update secret.tf with your access_key and secret and uncomment lines

terraform init

terraform apply

ansible-playbook -i hosts ansible/k8s-configure.yml


