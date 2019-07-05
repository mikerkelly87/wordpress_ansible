When you create a cloud instance if you pass it the following one liner:  
`sudo git clone https://git.mikerkelly.com/mikerkelly87/wordpress_ansible.git /root/wordpress_ansible && sudo /root/wordpress_ansible/init.sh`  
This will install the LEMP stack and setup Wordpress.  
You probably want to make your own copy of this and change the passwords in wp/vars/random_variables  
It Would NOT BE WISE to run this in production without first change the passwords in the variable files.