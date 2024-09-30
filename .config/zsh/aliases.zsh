# cd
alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# ls
alias "ls=ls --color=auto"
alias "la=ls -laF"
alias "ll=ls -lF"

# os specific
case $(cat /etc/os-release | grep "^ID=" | sed -e "s/^ID=//") in
    arch)
        alias "pacman=sudo pacman"
        ;;
    fedora)
        alias "dnf=sudo dnf"
        ;;
    ubuntu)
        alias "fd=fdfind"
        alias "apt-get=sudo apt-get"
        alias "apt=sudo apt"
        ;;
    nixos)
        alias "nixpm=sudo vim /etc/nixos/configuration.nix && sudo nixos-rebuild switch"
        alias "nix-rm-old=sudo nix profile wipe-history --profile /nix/var/nix/profiles/system"
        ;;
esac

# misslaneous
alias "su=sudo su"
alias "mkdir=mkdir -p"
alias "fetch=fastfetch || neofetch"
alias "cls=clear && fetch"
alias ":q=exit"
command -v pnpm && alias "npm=pnpm"
alias "docker_ps=docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"

