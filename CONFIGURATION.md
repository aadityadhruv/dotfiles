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
| system | The system group. It can be used to configure stuff like systemd services etc. |
| config | The config group. It installs the configuration files for various tools like neovim, tmux etc. |

##### Usage

###### `packages`

The following package groups are available:

```
- gaming # Wine, corectrl, emulators...
- development # Compilers, libraries...
- tools # htop, ffmpeg, firefox...

```
Each of these groups has `dnf` and `flatpak` packages under it, which will be installed.

###### `system`

The following variables are present for system:
`systemd`: List of systemd services to setup


###### `config`

The following variables are present for config:

`mail`: Configuration for neomutt and related tools


