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

## Example commands

Limit the run to one machine:

```bash
ansible-playbook --ask-become-pass --limit xps-13-pop-os.test site.yml
```

To reconfigure git on everything:

```bash
ansible-playbook -i production site.yml --tags git
```

To reconfigure aliases and lsdeluxe on everything:

```bash
 ansible-playbook --ask-become-pass --tags "aliases,lsd" site.yml
```

To reconfigure just my workstations:

```bash
ansible-playbook -i production workstations.yml
```

Ad-hoc stuff is also possible:

```bash
ansible pve.test -i production -m ping
ansible pve.test -i production -m command -a '/sbin/reboot'
```
