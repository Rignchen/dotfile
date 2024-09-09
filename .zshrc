# --- TMUX ---
if [ -z "$TMUX" ]; then
    tmux attach || tmux
    exit
fi

# --- Load Plugin Manager ---
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# --- Variables ---
export ZAP_GIT_PREFIX="git@github.com:"

# --- Plugins ---
# visual
plug "zsh-users/zsh-syntax-highlighting"
plug "zdharma-continuum/fast-syntax-highlighting"
plug "ael-code/zsh-colored-man-pages"
# autocompletion
plug "zsh-users/zsh-autosuggestions"
plug "marlonrichert/zsh-autocomplete"
# app autocompletion
plug "ryutok/rust-zsh-completions"

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

