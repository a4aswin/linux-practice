# Linux Practice

A collection of Bash scripts, Ansible playbooks and Docker configurations built while learning Linux and DevOps fundamentals.

## Tools Used
- Linux (Ubuntu via Multipass)
- Bash scripting
- Ansible
- Docker
- Git

## Contents

### Bash Scripts
- `menu.bash` — interactive menu to check disk space, memory, CPU usage and running services
- `healthcheck.bash` — interactive system health check menu

### Ansible
- `myplaybook.yml` — playbook to create directories, install curl and nginx, and manage services
- `inventory.ini` — inventory file for local Ubuntu server

### Docker
- `Dockerfile` — builds a Docker image that runs the healthcheck script
- Image available on Docker Hub: `docker pull aswin123a/healthcheck`

## How to Run

### Run the Docker image
```bash
docker run -it aswin123a/healthcheck
```

### Run Ansible playbook
```bash
ansible-playbook -i inventory.ini myplaybook.yml
```

## Skills Demonstrated
- Linux system administration
- Bash scripting with functions, loops and conditionals
- Ansible automation — installing packages, managing services, file permissions
- Docker — Dockerfile, building images, pushing to Docker Hub
- Git version control and GitHub
- SSH key based authentication
