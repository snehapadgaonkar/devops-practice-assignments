# DevOps Practice

This repository contains four foundational DevOps tasks designed to demonstrate practical knowledge of **CI/CD**, **Automation**, **Infrastructure as Code (IaC)**, and **Containerization** using modern DevOps tools.

## 🏁 Project Outcomes

| Task | Tool(s) Used      | Outcome                                           |
|------|-------------------|---------------------------------------------------|
| 1    | Jenkins, Docker   | Successfully built and deployed a CI/CD pipeline |
| 2    | Ansible           | Automated configuration of local environment     |
| 3    | Git               | Practiced version control and branching workflow |
| 4    | Terraform, Docker | Implemented IaC for Docker container provisioning |

## 🚀 Task 1 – CI/CD Pipeline with Jenkins and Docker

### 🎯 Objective:
Automate a simple build and deployment workflow using **Jenkins Pipeline** and **Docker**.

### 🧩 Steps:
- Installed **Docker Desktop** and **Jenkins** on Windows.  
- Configured Jenkins to use **Git** and **Docker** (added both to PATH).  
- Created a declarative pipeline (`Jenkinsfile`) to:
  - Clone repository from GitHub  
  - Build Docker image using the project `Dockerfile`  
  - Run a Flask application container  

### 🧰 Key Files:
- `task_1/Dockerfile`
- `task_1/app.py`
- `task_1/requirements.txt`
- `task_1/Jenkinsfile`

### ▶️ Pipeline Stages:
1. **Checkout** — Pulls source code from GitHub.  
2. **Build Docker Image** — Builds `hello-devops:latest`.  
3. **Run Container** — Runs the Flask app on port `5000`.

### ✅ Output:
Jenkins Console Output:\
Running on http://127.0.0.1:5000 \
Running on http://172.17.0.3:5000 \
Press CTRL+C to quit \


---

## ⚙️ Task 2 – Configuration Management using Ansible

### 🎯 Objective:
Automate local environment setup using **Ansible Playbook**.

### 🧩 Steps:
- Installed **Ansible** on WSL (Ubuntu).  
- Created an inventory file `inventory.ini` and a playbook `playbook.yml`.  
- The playbook performs:
  - Installs **Nginx**  
  - Creates a user `devopsuser`  
  - Creates a project directory `/home/devopsuser/project`  
  - Copies a configuration file  

### 🧰 Key Files:
- `task_2/inventory.ini`
- `task_2/playbook.yml`
- `task_2/files/config.txt`

### ▶️ Command:
```bash
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass
```
### ✅ Output:
PLAY RECAP **********************************************************************\
localhost : ok=5    changed=4    unreachable=0    failed=0 

## 🌿 Task 3 – Version Control and Branching (Git Workflow)

### 🎯 Objective
Practice **Git branching**, **merging**, and **collaboration**.

### 🧩 Steps
- Initialized Git repository and connected to GitHub.  
- Created and switched between branches:  
  - `feature/update-readme`  
  - `bugfix/deployment-issue`  
- Performed commits, merges, and resolved conflicts.

### ▶️ Common Commands
```bash
git checkout -b feature/new-feature
git add .
git commit -m "Added new feature"
git push origin feature/new-feature
git merge main
```
### ✅ Output
GitHub reflects multiple branches and successful merge commits

# 🏗️ Task 4 – Infrastructure as Code using Terraform + Docker

## 🎯 Objective
Use **Terraform** to automatically create and run **Docker containers**.

## 🧩 Steps

1. Installed **Terraform** and **Docker**.  
2. Created configuration files:
   - `main.tf` — Docker provider setup  
   - `variables.tf` — defines host/container ports  
   - `outputs.tf` — displays container info  
3. Terraform provisions:
   - Pulls the latest **Nginx** image  
   - Starts a running container on a specified port (e.g., **8081**)  

## 🧰 Key Files

- task_4/main.tf
- task_4/variables.tf
- task_4/outputs.tf

## ▶️ Commands

```bash
terraform init
terraform plan
terraform apply -auto-approve
```

### ✅ Output
Apply complete! Resources: 2 added.\
\
Outputs:\
container_name = "nginx_container"\
container_ip   = "172.17.0.2"\
Access in browser → http://localhost:8081
