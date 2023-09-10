### Configuration

This a documentation page on configuring the installation using `config.yaml`.
There are two aspects to configuration - using the "group" like tags to install
items in groups, or manually overriding the variables to fine-tune the installation.

#### Normal Installation

This method is as intended, by using the provided flags. 

##### Descriptions

| Variable | Purpose |
| -------- | ------- |
| username | This is used to choose what home directory will the configuration files be installed to |
| packages | The list of packages that should be installed. Note these are package groups | 
| system | The system group. It can be used to configure stuff like wireguard, systemd etc. |
| opt | Currently unimplemented, but will be used for optional installations | 
| config | The "dotfiles" group. It installs the configuration files for various tool |

##### Usage

###### `packages`

The following package groups are available:

```
- gaming #Gaming tools like wine, corectrl etc.
- development #Development tools like neovim, clang, etc.
- tools # Various configuration utilites like btop, nmtui etc. 
- libraries # Some libraries I use
- xorg # Xorg specific packages like polybar
- wayland # Wayland specific packages like waybar

```
Each of these groups has `dnf` and `flatpak` packages under it, which will be installed.

###### `system`

The following variables are present for system:
`wireguard`: This in itself doesn't do anything but has variable(s) under it.
`wg_path`: This is the location of the configuration file you want to include in the notebook. 
`install_wireguard`: Should wireguard be setup or not.
`install_systemd`: Should systemd services be setup or not.


###### `config`

The following variables are present for config:

`install_shell`: Should shell be setup or not. This includes zsh, zsh plugins and (neo)vim.
`install_wayland`: Should wayland configs be setup or not. This includes configs for stuff like waybar, hyprland etc.
`install_xorg`: Should xorg configs be setup or not. This includes configs for stuff like polybar, bspwm etc.
`install_misc`: Should misc configs be setup or not. This is for misc packages like fonts. This has not yet been implemented.


