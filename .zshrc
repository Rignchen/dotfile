# --- Oh My ZSH ---
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"

# Warn me when there's an update
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    zsh-autocomplete
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
alias "su=sudo su"
alias "copy=xclip -selection clipboard"
alias "fetch=fastfetch 2>/dev/null | neofetch"
alias "cls=clear && fetch"

alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# --- Env ---
export PATH="$PATH:/home/nils/.local/share/JetBrains/Toolbox/scripts"
export EDITOR='vim'

# --- Os Specific ---
case $(uname -n) in
    archlinux)
        alias "copy=copyq copy"
        alias "pacman=sudo pacman"
        ;;
    fedora)
        alias "copy=xclip -selection clipboard"
        alias "dnf=sudo dnf"
        ;;
    ubuntu)
        ;;
esac

# cls

