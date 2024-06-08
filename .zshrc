# --- Oh My ZSH ---
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
#    tmux
#    zoxide
#    docker
#    docker-compose
    colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# --- Aliases ---
alias "cls=clear && fastfetch"
alias "up-all=update-all"
alias "su=sudo su"
alias "copy=xclip -selection clipboard"

alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# --- User configuration ---

export PATH="$PATH:/home/nils/.local/share/JetBrains/Toolbox/scripts"
export EDITOR='vim'

# cls

