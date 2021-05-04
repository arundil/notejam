# Notejam
Azure Cloud implementation. Source app https://github.com/nordcloud/notejam

Framework selected: Django

# Architecture
Originaly, Notejam was developed as a single monolitic solution (Web app + database).

Notejan web app has ben decoupled from the Database and put into a container.

To guarantee orchestrated into a aks service (Kubernetes).

In front of the load balancer access, an Nginx reverse proxy has been placed to protect any traffic overflow in the web app.

In this new architecture, the database has been decoupled and replaced with a Postgres SQL service. It is also firewaled against nginx public IP. 

For monitoring, I choose a solucion with grafana + influxDB all feeded with the info comming from nginx logs. Therefore many aspects of the network traffic can be analized. Nevertheless, metrics can be also taken from the application Insights. 

![Alt text](./diagram/Architecture.svg)

# Network sharping

Also, Nginx is configured with "ngx_http_limit_req_module" which reduces the number of request for a single IP. More info  http://nginx.org/en/docs/http/ngx_http_limit_req_module.html

# Data preservation

Azure backup

# Service Availability 

Kubernetes

# Continuous integration

CI/CD pipelines

# Logs and monitoring

Grafana

# Try it out!
To deploy the infrastructure, you can do it via ansible. To install ansible you can follow this link: https://docs.ansible.com/ansible/latest/installation_guide/index.html 

Then, execute it with this line (you will need to create a secret file or decrypt it asking me the password):

```bash
ansible-playbook -i hosts deployment.yaml --ask-become-pass --ask-vault-pass
```

