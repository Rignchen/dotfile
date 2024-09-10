# cd
alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# ls
alias "la=ls -laF"
alias "ll=ls -lF"

# os specific
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

# misslaneous
alias "su=sudo su"
alias "mkdir=mkdir -p"
alias "fetch=fastfetch || neofetch"
alias "cls=clear && fetch"
alias ":q=exit"

