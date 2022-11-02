module "proxmox-ubuntu-22-04" {
  source = "../modules/proxmox-ubuntu-22-04"

  clone       = "ubuntu-22-04-desktop-raw"
  name        = "ubuntu-22-04-desktop-raw-vm-production"
  description = "Ubuntu 22.04 desktop VM with bare minimum settings"
  pool        = ""
}
