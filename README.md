# ansible-raspberry-pi

Setup Raspberry Pi with Ansible.

## Environment

compute OS: Ubuntu Desktop 20.04 LTS 64bit

pi: Raspberry Pi 4 Model B 8G RAM
No Ethernet cable, use WiFi
No display, use ssh to connect.
SD card: kingstone 64G
OS for pi: ubuntu server 20.04 LTS 64bit

refer: https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi

## Prepare

Get a Micro SD card

install imager on compute: https://www.raspberrypi.org/software/

Select OS for pi: ubuntu server 20.04 LTS 64bit

after finish, modify netplan config for wifi:

    vim /media/$USER/system-boot/network-config

## First Boot

install sd card
connect power to boot pi
wait for wifi

Find IP for pi

1) with arp
sudo apt install net-tools
arp -na | grep -i "dc:a6:32" # pi 4 only

2) from router webui

ssh ubuntu@$IP  # default password is also ubuntu

change hostname: sudo vim /etc/hostname -> pi

authorize your ssh pub key: `ssh-import-id gh:$GITHUB_USRNAME`

try ssh to pi in another terminal

Optional: disable password authentication in /etc/sshd_config

If you have extra disk to attach to pi, you can plug and mount it now.

now I can use ansible
