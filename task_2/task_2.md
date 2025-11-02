![alt text](image.png)
cd ~
git clone https://github.com/snehapadgaonkar/devops-practice-assignments.git
cd devops-practice-assignments
cd task_2
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass
sudo cat /home/devopsuser/project/config.txt