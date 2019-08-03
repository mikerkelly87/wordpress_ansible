Role Name
=========

This is an Ansible Role that will install the LEMP stack, create a MySQL Database, and setup a Wordpress website

Requirements
------------

Successful installation of this role requires it to be run on an Ubuntu 18.04 server

Role Variables
--------------

All variables required for this role exist in `vars/package_list.yml` and `vars/random_variables.yml`

Dependencies
------------

No role dependencies required

Example Playbook
----------------
````
---
- hosts: localhost
  become: yes
  become_user: root
  vars_files:
    - /etc/ansible/roles/wp/vars/package_list.yml
    - /etc/ansible/roles/wp/vars/random_variables.yml
  roles:
    - wp
````
License
-------

BSD

Author Information
------------------

Create by Mike Kelly
