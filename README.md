# Dotfiles

This repository is used to setup my Fedora Workstation. It consists of various Ansible playbooks that automate a
large chunk of setting up tools, configuartion files and system packages. 

While I use GNOME on my workstation, this playbook allows installation of either BSPWM (XOrg) or Hyprland (Wayland). 
Those flags can be setup in `config.yaml`.

All configuration should be done through `config.yaml`. The repo does let you install a lot of the packages by
`groups`


To understand how to configure the installation, refer to [`CONFIGURATION.md`](./CONFIGURATION.md)


This is how the setup looks on Fedora with Hyprland as the TWM. 

![alt fedora](res/fedora-wayland.png "Hyprland on Fedora")
