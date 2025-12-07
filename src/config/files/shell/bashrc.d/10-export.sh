#!/bin/bash

export HISTSIZE=10000
export HISTFILESIZE=10000
export DISABLE_MAGIC_FUNCTIONS=true
export BROWSER=/usr/bin/firefox
export EDITOR="/usr/bin/nvim"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
source <(kubectl completion bash)
source <(fzf --bash)
eval "$(starship init bash)"
