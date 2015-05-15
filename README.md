##StratCheck Deployment Tools
This repo is a collection of deployment and orchestration tools in use by StratCheck.  Our current preference is Ansible, but Salt-Stack is included for legacy support.

###Ansible Playbooks

| App     | OS       | Script         | Usage                                            |
|---------|----------|----------------|--------------------------------------------------|
| Web App | Debian 8 | scwebapp.yaml  | `ansible-playbook scwebapp.yaml --ask-sudo-pass` | 
