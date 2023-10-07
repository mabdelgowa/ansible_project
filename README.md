# ansible_project
* Note:
    * 1- we are deploying this project to configure this server for LAMP Application (Nginx, PHPmyadmin and mysql)
    * 2- the NGINX is installed as dedicated server but PHPmyadmin and mysql are installed through docker containers
    * 3- you can check ansible.cfg for ansible configurations
    * 4- the hosts file contains the inventory which will be configured
* This project is about how to configure servers using Ansible (configuration management tool)
* This project contain some ansible roles will be explained in this Readme file:
* 1- install epel :
    * this role to be able to install NGINX is the next step
* 2- install NGINX:
    * this role to install NGinx server and we will pass configuration for it later in next steps
* 3- Now we are able to start NGINX server through the role start_nginx
* 4- Also we installed python and docker through roles : - install_docker - install_python3
* 5- we will copy certificates for HTTPS through NGINX this will be done through role (copy_cert)
* 6- firewall_config:
    * this role will open ports in the server to be able to recieve requests on some ports
* 7- hotname_config:
    * This role is for configuring the FQDN in /etc/hosts in the server
    * Also we have a bash script for checking if there is any entry with the same name in the file or no
* 8- the last play was for configuring NGINX:
    * I used jinja2 configuration template for configuring this server   
  
