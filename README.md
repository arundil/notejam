# notejam
Cloud Version of this app https://github.com/nordcloud/notejam

# Architecture
![Alt text](./diagram/Architecture.svg)
<img src="./controllers_brief.svg">

To deploy the infrastructure, you will can do it via: 
ansible-playbook -i hosts deployment.yaml --ask-become-pass --ask-vault-pass