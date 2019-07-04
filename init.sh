#! /bin/bash
# user-data script

# Add the Ansible Repo to make sure we get the latest version of Ansible installed
sudo add-apt-repository ppa:ansible/ansible -y
sudo apt update
# Install Ansible
sudo DEBIAN_FRONTEND=noninteractive apt install -y ansible
# Clone playbook repo
sudo git clone https://git.mikerkelly.com/mikerkelly87/wordpress_ansible.git /root/wordpress_ansible
# Make a softlink to put the wordpress role in the default location Ansible expects roles to be in
sudo ln -s /root/wordpress_ansible/playbooks/wp /etc/ansible/roles/
# Run the playbook to apply the role
sudo ansible-playbook /root/wordpress_ansible/playbooks/wp.yml
