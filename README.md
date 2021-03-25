# Ansible
Ansible machine setup playbooks

## Setup

Set the correct hostname for the machine you are configuring.

```bash
$ hostnamectl
...

$ sudo hostnamectl set-hostname host.test
```

Install ansible

Run

```bash
$ sudo ansible-pull -U https://github.com/briandipalma/ansible.git
```
