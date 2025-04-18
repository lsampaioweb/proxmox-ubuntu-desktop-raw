# proxmox-ubuntu-24-04-desktop-raw
Project with Ansible scripts to create an Ubuntu Desktop template on Proxmox from a cloned virtual machine with the minimum packages and updates.

Run the command in the terminal:
```bash
  ansible-playbook template.yml -e "hostname=ubuntu-24-04-desktop-raw"
  ansible-playbook kvm_setup.yml -e "node=edge-pve-01 vm_name=ubuntu-24-04-desktop-raw"
```

#
### Created by:

1. Luciano Sampaio.
