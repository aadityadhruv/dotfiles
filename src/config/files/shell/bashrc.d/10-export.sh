#!/bin/bash

eval "$(starship init bash)"
export DISABLE_MAGIC_FUNCTIONS=true
export BROWSER=/usr/bin/firefox
export EDITOR="/usr/bin/nvim"
export PATH="$HOME/.local/bin:$PATH"
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
source <(kubectl completion bash)
source <(fzf --bash)
