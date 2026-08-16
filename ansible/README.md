# proxmox-ubuntu-desktop-raw
Project with Ansible scripts to create an Ubuntu Desktop template on Proxmox from a cloned virtual machine with the minimum packages and updates.

### Manual Usage

#### Orchestrated Execution (Recommended)

Run all playbooks in sequence using the orchestration playbook:

```bash
cd ansible
ansible-playbook site.yml
```

This executes:
1. `localhost.yml` — Local machine preparation
2. `template.yml` — Ubuntu Desktop template setup
3. `kvm_setup.yml` — Proxmox KVM configuration

#### Individual Playbook Execution

For selective or manual execution, run individual playbooks:

1. **Proxmox VM:**

    Install and setup application:
    ```bash
    cd ansible
    ansible-playbook template.yml -e "hostname=ubuntu-24-04-desktop-raw"
    ```

    Setup VM settings on Proxmox:
    ```bash
    ansible-playbook kvm_setup.yml -e "node=edge-pve-01 vm_name=ubuntu-24-04-desktop-raw"
    ```

2. **VirtualBox VM:**

    **Explanation of Flags:**
    - `-K` — Prompts for the **sudo password** to execute tasks as root.

    Install and setup application:
    ```bash
    ansible-playbook localhost.yml -K
    ```

#
### Created by:

1. Luciano Sampaio.
