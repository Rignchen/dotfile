if status is-interactive
    # Commands to run in interactive sessions can go here
end

# export
export "EDITOR=vim"

# alias
alias "cls=clear && fastfetch"
alias "Tconfig=$EDITOR ~/.config/fish/config.fish"
alias "Thistory=$EDITOR ~/.local/share/fish/fish_history"
alias "Vimrc=$EDITOR ~/.vimrc"
alias "su=sudo su"
# copy alias is not the same on arch and on fedora
switch (uname -n)
    case archlinux
        alias "copy=copyq copy"
    case fedora
        alias "copy=xclip -selection clipboard"
end

alias "cd.=cd .."
alias "cd..=cd ../.."
alias "cd...=cd ../../.."
alias "cd....=cd ../../../.."

# execution
zoxide init fish | source
cls
