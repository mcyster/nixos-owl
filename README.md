# /etc/nixos

This is the `/etc/nixos` directory on my workstation `owl`.

Split configuration into 
- configuration.nix, mainly machine specific configuration
- hardware-configuraton.nix, generated during setup, machine specific
- my.nix, a minimal set of tools to get a comfortable environment, use on all my machines
- extole.nix, configuration for work environment, use on machines I use for work
- tunnel-cyster-com, setup a tunnel to a public host I have, use on a few machines

## This repo

Making changes:

* change configuration 
* `nixos-rebuild switch`
* check changes, reboot if needed
* `git add -A; git commit -m 'descriptive message'; git push origin master`

Updating:

*  `nixos-rebuild switch --upgrade`

Out of space:

* `nix-collect-garbage -d`

Change channel:

* `nix-channel --list`
* `nix-channel --remove nixos`
* `nix-channel --add https://nixos.org/channels/nixos-unstable nixos`
* `nixos-rebuild switch --upgrade`

## Setup

Hardware
- CPU: Intel Xeon ES-1650 3.5GHz, 6 core
- Motherboard: Asus X99-M WS
- Video: GeForce GTX960 (rev a1)
- Ram: 64G
- Disk: 1T SSD

Booted from a minimal Nixos image (20.03) on a USB stick

