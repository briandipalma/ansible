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

or

```bash
ansible-playbook --ask-become-pass --limit xps-13-pop-os.test local.yml
```

For dev testing
