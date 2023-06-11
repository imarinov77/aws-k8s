update secret.tf with your access_key and secret_key and uncomment lines

add aws-key.pem with your ssh private key for AWS

terraform init

terraform apply

ansible-playbook -i hosts ansible/k8s-configure.yml


