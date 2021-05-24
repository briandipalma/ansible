# Ansible
Ansible machine setup playbooks. Installs and configures all the software I use on servers and workstations.

## Setup

1. Get/set the hostname for the machine you are configuring.

   ```bash
   $ hostnamectl
   ...

   $ sudo hostnamectl set-hostname host.test
   ```
2. Add the hostname to the
   [Ansible inventory file](https://github.com/briandipalma/ansible/blob/main/production)
   under the correct group (workstation/server)
3. Install ansible or setup SSH key login on the machine
4. Run

   ```bash
   ansible-galaxy collection install community.general
   ```
   
   To install the homebrew modules
5. Run

   ```bash
   ansible-playbook --ask-become-pass site.yml
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

To reconfigure just workstations:

```bash
ansible-playbook -i production workstations.yml
```

Ad-hoc stuff is also possible:

```bash
ansible pve.test -i production -m ping
ansible pve.test -i production -m command -a '/sbin/reboot'
```
