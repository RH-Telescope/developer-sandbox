sudo dnf install ansible-core ansible-collection-ansible-posix -y -v
ansible-playbook -i inventory bootstrap-playbook.yml -vvv --connection=local

