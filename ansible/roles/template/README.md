# Ubuntu Desktop Raw Template

**Desktop Foundation**: Minimal GUI environment built on server-raw foundation.

## Overview

This template adds essential desktop components to the server-raw foundation, creating a minimal but functional Ubuntu Desktop environment. Provides the base GUI infrastructure that desktop applications can build upon.

## Desktop Environment

### Display & Session Management
- **GDM3**: GNOME Display Manager for user login and session management.
- **Ubuntu Desktop Minimal**: Core Ubuntu desktop with essential applications only.
- **GNOME Keyring**: Secure credential storage for desktop applications.

### Desktop Network Management
- **NetworkManager**: Desktop-optimized network configuration service.
- **NetworkManager GNOME**: GUI integration for network management.
- **Netplan Integration**: Configures NetworkManager as the network renderer.

## Security & Certificates

### Certificate Management
- `libnss3-tools` - Certificate utilities including `certutil`.
- NSS certificate database integration.

## System Configuration
- **Hostname Configuration**: Sets unique desktop hostname.
- **NetworkManager Setup**: Configures GUI network management.
- **Package Cleanup**: Removes unnecessary packages.
- **Machine-ID Reset**: Ensures unique system identity.
- **System Cleanup**: Removes temporary files and configurations.

## Technical Details

### Network Architecture
- **Replaces**: systemd-networkd with NetworkManager.
- **GUI Integration**: Network settings accessible through desktop.
- **WiFi Support**: Wireless network management capabilities.

### Display Architecture
- **Login Manager**: GDM3 handles user authentication.
- **Session Management**: GNOME session initialization.
- **Minimal Footprint**: Only essential desktop packages included.

## Use Cases
- **Base Desktop**: Foundation for desktop development.
- **Minimal GUI**: Lightweight desktop for specific applications.
- **Remote Desktop**: Base for VNC/RDP desktop access.

## Dependencies
- **Builds On**: `10-proxmox-ubuntu-server-raw`.
- **Used By**: `21-proxmox-ubuntu-desktop-standard`.

#
### Created by:

1. Luciano Sampaio.

