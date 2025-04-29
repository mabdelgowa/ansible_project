# Ansible Project: LAMP Stack Deployment with Docker

This Ansible project automates the deployment of a LAMP (Linux, Nginx, MySQL, PHPMyAdmin) stack. In this setup, Nginx is installed directly on the host machine, while MySQL and PHPMyAdmin are deployed within Docker containers. The project is structured using Ansible roles for modularity and maintainability.

## 📁 Project Structure

The repository is organized as follows:

```

ansible_project/
├── ansible.cfg
├── deploy_docker_roles.yaml
├── hosts
├── README.md
├── copy_cert/
├── create_user/
├── firewall_config/
├── hostname_config/
├── install_compose/
├── install_docker/
├── install_docker_compose/
├── install_epel/
├── install_python3/
├── nginx/
├── start_container/
├── start_nginx/
├── template/
└── vars/
```


- **ansible.cfg**: Ansible configuration file specifying settings like inventory location and roles path.
- **deploy_docker_roles.yaml**: Main playbook orchestrating the deployment process.
- **hosts**: Inventory file listing target servers.
- **Roles**:
  - **copy_cert/**: Handles SSL certificate copying.
  - **create_user/**: Manages user creation.
  - **firewall_config/**: Configures firewall settings.
  - **hostname_config/**: Sets the server hostname.
  - **install_compose/**: Installs Docker Compose.
  - **install_docker/**: Installs Docker Engine.
  - **install_docker_compose/**: Alternative Docker Compose installation.
  - **install_epel/**: Installs EPEL repository.
  - **install_python3/**: Installs Python 3.
  - **nginx/**: Installs and configures Nginx.
  - **start_container/**: Starts Docker containers for MySQL and PHPMyAdmin.
  - **start_nginx/**: Starts and enables Nginx service.
- **template/**: Contains Jinja2 templates for configuration files.
- **vars/**: Defines variables used across roles. 

## 🚀 Deployment Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/mabdelgowa/ansible_project.git
   cd ansible_project
   ```


2. **Configure Inventory**:
   Edit the `hosts` file to include your target server(s):
   ```ini
   [webservers]
   your_server_ip ansible_user=your_username
   ```


3. **Review and Customize Variables**:
   Modify variables in the `vars/` directory as needed to suit your environment.

4. **Run the Playbook**:
   ```bash
   ansible-playbook -i hosts deploy_docker_roles.yaml
   ```


   This command will execute the playbook and set up the LAMP stack on your specified server(s).

## 📝 Notes

- **Ansible Configuration**: The `ansible.cfg` file is pre-configured to use the provided `hosts` inventory and roles directory.
- **Nginx Installation**: Nginx is installed directly on the host machine to serve as the web server.
- **Dockerized Services**: MySQL and PHPMyAdmin are deployed within Docker containers for isolation and ease of management.
- **Security**: Ensure that sensitive information, such as passwords and certificates, are handled securely. Consider using Ansible Vault to encrypt sensitive data. 

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

## 📧 Contact

For questions or support, please open an issue on the [GitHub repository](https://github.com/mabdelgowa/ansible_project/issues).

---

This `README.md` provides a clear overview and instructions for using the Ansible project to deploy a LAMP stack with Docker. 
