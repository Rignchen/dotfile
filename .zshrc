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
    # visual
    zsh-syntax-highlighting
    fast-syntax-highlighting
    colored-man-pages
    # autocompletion
    zsh-autosuggestions
    zsh-autocomplete
    # app autocompletion
    rust
    # app
#    tmux
#    zoxide
#    docker
#    docker-compose
)

source $ZSH/oh-my-zsh.sh

# --- Aliases ---
alias "su=sudo su"
alias "fetch=fastfetch || neofetch"
alias "cls=clear && fetch"
alias ":q=exit"

alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# --- Env ---
export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts:$HOME/cmd:$HOME/Discord"
export EDITOR='vim'

# --- Os Specific ---
case $(cat /etc/os-release | grep "^ID=" | sed -e "s/^ID=//") in
    arch)
        alias "copy=copyq copy"
        alias "pacman=sudo pacman"
        ;;
    fedora)
        alias "copy=xclip -selection clipboard"
        alias "dnf=sudo dnf"
        ;;
    ubuntu)
        alias "fd=fdfind"
        alias "apt-get=sudo apt-get"
        alias "apt=sudo apt"
        ;;
    nixos)
        alias "copy=wl-copy"
        alias "nixpm=sudo vim /etc/nixos/configuration.nix && sudo nixos-rebuild switch"
        ;;
esac

# --- End ---
compinit
eval "$(zoxide init zsh)"
cls

