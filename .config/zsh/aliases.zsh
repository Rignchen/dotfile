# cd
alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# ls
alias "ls=ls --color=auto"
alias "ls.=ls .."
alias "ls..=ls ../.."
alias "la=ls -laF"
alias "la.=la .."
alias "la..=la ../.."
alias "ll=ls -lF"
alias "ll.=ll .."
alias "ll..=ll ../.."

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
		alias "nixpm=$EDITOR ~/dotfile/configuration.nix && sudo cp ~/dotfile/configuration.nix /etc/nixos/configuration.nix && sudo nixos-rebuild switch"
		alias "nix-rm-old=sudo nix profile wipe-history --profile /nix/var/nix/profiles/system && sudo nixos-rebuild switch"
		alias "nix-shell=nix-shell --command zsh"
		;;
esac

# not allways
command -v psql    || alias "psql=docker run --name some-postgres --volume /var/lib/postgresql/data:/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust -d postgres && sleep 5 && docker exec -it some-postgres psql -U postgres; docker rm -f some-postgres"
command -v pg_dump || alias "pg_dump=docker run --name some-postgres --volume /var/lib/postgresql/data:/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust -d postgres > /dev/null && sleep 5 && TEMP=\$(docker exec -it some-postgres pg_dump -U postgres); docker rm -f some-postgres > /dev/null && echo \$TEMP"

# remap add add default arguments
alias "su=sudo su"
alias "mkdir=mkdir -p"

# misslaneous
alias "fetch=fastfetch 2> /dev/null || neofetch"
alias "cls=clear && fetch"
alias ":q=exit"
alias "docker_ps=docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"

