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
case $OS in
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
        alias "nixpm=sudo $EDITOR /etc/nixos/configuration.nix && sudo nixos-rebuild switch"
        alias "nix-rm-old=sudo nix profile wipe-history --profile /nix/var/nix/profiles/system"
        ;;
esac

# postgres
alias "psql=docker run --name some-postgres --volume /var/lib/postgresql/data:/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust -d postgres && sleep 5 && docker exec -it some-postgres psql -U postgres; docker rm -f some-postgres"
alias "pg_dump=docker run --name some-postgres --volume /var/lib/postgresql/data:/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust -d postgres > /dev/null && sleep 5 && TEMP=\$(docker exec -it some-postgres pg_dump -U postgres); docker rm -f some-postgres > /dev/null && echo \$TEMP"

# misslaneous
alias "su=sudo su"
alias "mkdir=mkdir -p"
alias "fetch=fastfetch || neofetch"
alias "cls=clear && fetch"
alias ":q=exit"
command -v pnpm && alias "npm=pnpm"
alias "docker_ps=docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"

